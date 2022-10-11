
# general imports
import os
import torch
import torch.nn.functional as F
from torch.distributions import Normal
import numpy as np
from copy import deepcopy
import wandb
import time
import warnings
warnings.simplefilter(action='ignore', category=FutureWarning)
from torch.distributions import Normal
import gym

# local imports
from mujoco.online_learning.algorithms import OGD
from optimizers.sgd_fmdopt import SGD_FMDOpt
from optimizers.ada_fmdopt import Ada_FMDOpt
from mujoco.online_learning.lsopt import LSOpt
from optimizers.sadagrad import Sadagrad
from optimizers.sls_fmdopt import SLS_FMDOpt
from optimizers.gulf2 import GULF2
from helpers import get_grad_norm

class SSO_OGD(OGD):

    def __init__(self, env, args):
        super(SSO_OGD,self).__init__(env, args)
        self.lr = 10**args.log_lr
        self.algo = 'SSO_OGD'
        self.episodes = self.args.episodes
        self.batch_size = self.samples
        self.eta = 1 #/ self.lr
        surr_optim_args = {'lr': 1., 'c':args.c,
            'beta_update':args.sls_beta_update, 'expand_coeff':args.expand_coeff }
        # surr_optim_args = {'lr': 10**(-3.) }
        self.optimizer = LSOpt(self.policy.parameters(), **surr_optim_args)
        # self.optimizer = torch.optim.Adam(self.policy.parameters(), **surr_optim_args) #SGD_FMDOpt(self.policy.parameters(), **optim_args)
        self.single_out = 0

    def update_parameters(self, new_examples):

        # grab examples
        _, (states, expert_actions, _, _), self.avg_return = new_examples
        self.replay_size = int(self.args.samples_per_update)
        self.interactions += int(self.args.samples_per_update)

        # move everything to device
        self.policy.to(self.device)
        states, expert_actions = states.to('cuda'), expert_actions.to('cuda')

        # compute target
        target_t, _ = self.policy(states)

        # make hook for jacobian
        def inner_closure(model_outputs):
            inner_loss = (model_outputs-expert_actions.detach()).pow(2).sum()
            return inner_loss

        # get linearization term
        self.optimizer.zero_grad()
        dlt_dft = torch.autograd.functional.jacobian(inner_closure, target_t).detach() # n by m
        assert dlt_dft.shape == target_t.shape

        # step surrogate
        for m in range(self.args.m):
            #
            def closure(call_backward=True):
                #
                self.optimizer.zero_grad()
                # linearized term
                target, _ = self.policy(states)
                loss = dlt_dft*target
                # regularization term
                reg_term = (target-target_t.detach()).pow(2)
                # compute full surrogate
                surr = (loss / self.eta + reg_term ).mean()
                # backprop
                if call_backward:
                    surr.backward()
                return surr
            # step
            self.optimizer.step(closure)

        # compute grad_norm
        self.optimizer.zero_grad()
        mean, log_std = self.policy(states)
        loss = (mean-expert_actions).pow(2).mean()
        loss.backward()
        grad_norm = self.compute_grad().detach().pow(2).mean()

        # step optimizer
        self.updates += 1

        # store
        self.info = {'sso_ogd_loss':  loss,
                     'grad_norm': grad_norm}
        # return computed loss
        return loss

class OSls(OGD):

    def __init__(self, env, args):
        super(OSls,self).__init__(env, args)
        self.lr = 10**args.log_lr
        self.algo = 'SlsOGD'
        self.episodes = self.args.episodes
        self.batch_size = self.samples
        surr_optim_args = {'lr': 10**(-3.) }
        optim_args = {'lr': 1. } #10**args.log_lr
        self.optimizer = LSOpt(self.policy.parameters(), **optim_args) #SGD_FMDOpt(self.policy.parameters(), **optim_args)
        self.single_out = 0

    def update_parameters(self, new_examples):

        # grab examples
        _, (states, expert_actions, _, _), self.avg_return = new_examples
        self.replay_size = int(self.args.samples_per_update)
        self.interactions += int(self.args.samples_per_update)

        # move everything to device

        self.policy.to(self.device)
        states, expert_actions = states.to('cuda'), expert_actions.to('cuda')

        # compute target
        target_t, _ = self.policy(states)

        # make hook for jacobian
        def closure(call_backward=False):
            self.optimizer.zero_grad()
            target_t, _ = self.policy(states)
            loss = (target_t-expert_actions.detach()).pow(2).mean()
            if call_backward:
                loss.backward()
            return loss

        # call line-search optimizer
        self.optimizer.step(closure)

        # compute grad_norm
        self.optimizer.zero_grad()
        mean, log_std = self.policy(states)
        loss = (mean-expert_actions).pow(2).mean()
        loss.backward()
        grad_norm = self.compute_grad().detach().pow(2).mean()

        # step optimizer
        self.updates += 1

        # store
        self.info = {'sso_ogd_loss':  loss,
                     'grad_norm': grad_norm}
        # return computed loss
        return loss

class SSO_OSls(OGD):

    def __init__(self, env, args):
        super(SSO_OSls,self).__init__(env, args)
        self.lr = 10**args.log_lr
        self.algo = 'SSO_OSls'
        self.episodes = self.args.episodes
        self.batch_size = self.samples
        self.eta_schedule = 'stochastic'
        self.eta = 1. #/ self.lr
        surr_optim_args = {'lr': 10**(-3.) }
        self.optimizer = torch.optim.Adam(self.policy.parameters(), **surr_optim_args) #SGD_FMDOpt(self.policy.parameters(), **optim_args)
        self.single_out = 0
        self.min_eta = 1e-4
        self.max_eta = 1e4
        # create some local tools
        self.grad_sum = None
        self.init_eta = self.eta
        self.c = args.c
        self.beta_update = args.outer_beta_update
        self.expand_coeff = args.expand_coeff

    def compute_functional_stepsize(self, inner_closure, f_t, dlt_dft):
        eta_prop = self.eta / self.expand_coeff
        for i in range(100):
            lhs = inner_closure(f_t - (1/eta_prop) * dlt_dft)
            rhs = inner_closure(f_t) - (1/eta_prop) * self.c * torch.norm(dlt_dft).pow(2)
            if lhs > rhs:
                eta_prop /= self.beta_update
            elif (1/eta_prop) <= 1e-6:
                break
            else:
                break
        return eta_prop

    def update_parameters(self, new_examples):

        # grab examples
        _, (states, expert_actions, _, _), self.avg_return = new_examples
        self.replay_size = int(self.args.samples_per_update)
        self.interactions += int(self.args.samples_per_update)

        # move everything to device
        self.policy.to(self.device)
        states, expert_actions = states.to('cuda'), expert_actions.to('cuda')

        # compute target
        target_t, _ = self.policy(states)

        # make hook for jacobian
        def inner_closure(model_outputs):
            inner_loss = (model_outputs-expert_actions.detach()).pow(2).sum()
            return inner_loss

        # get linearization term
        self.optimizer.zero_grad()
        dlt_dft = torch.autograd.functional.jacobian(inner_closure, target_t).detach() # n by m
        assert dlt_dft.shape == target_t.shape

        # solve for eta + project it to make sure it does not explode
        self.eta = self.compute_functional_stepsize(inner_closure, target_t, dlt_dft)
        self.eta = max(self.min_eta, self.eta)
        self.eta = min(self.max_eta, self.eta)

        # step surrogate
        for m in range(self.args.m):
            #
            self.optimizer.zero_grad()
            # linearized term
            target, _ = self.policy(states)
            loss = dlt_dft*target
            # regularization term
            reg_term = (target-target_t.detach()).pow(2)
            # compute full surrogate
            surr = (loss / self.eta + reg_term ).mean()
            # backprop
            surr.backward()
            # step
            self.optimizer.step()

        # compute grad_norm
        self.optimizer.zero_grad()
        mean, log_std = self.policy(states)
        loss = (mean-expert_actions).pow(2).mean()
        loss.backward()
        grad_norm = self.compute_grad().detach().pow(2).mean()

        # step optimizer
        self.updates += 1

        # store
        self.info = {'sso_ogd_loss':  loss,
                     'grad_norm': grad_norm}
        # return computed loss
        return loss

class SSO_AdaOGD(OGD):

    def __init__(self, env, args):
        super(SSO_AdaOGD,self).__init__(env, args)
        self.lr = 10**args.log_lr
        self.algo = 'SSO_AdaOGD'
        self.episodes = self.args.episodes
        self.batch_size = self.samples
        # self.eta_schedule = 'stochastic'
        # self.eta = 1 / self.lr
        self.eta = 10**(-2.)
        surr_optim_args = {'lr': 10**(-3.) }
        self.optimizer = torch.optim.Adam(self.policy.parameters(), **surr_optim_args) #SGD_FMDOpt(self.policy.parameters(), **optim_args)
        self.single_out = 0
        self.min_eta = 1e-4
        self.max_eta = 1e4
        # create some local tools
        self.grad_sum = None
        self.init_eta = self.eta
        self.c = args.c
        self.beta_update = args.outer_beta_update
        self.expand_coeff = args.expand_coeff

    def update_parameters(self, new_examples):

        # grab examples
        _, (states, expert_actions, _, _), self.avg_return = new_examples
        self.replay_size = int(self.args.samples_per_update)
        self.interactions += int(self.args.samples_per_update)

        # move everything to device
        self.policy.to(self.device)
        states, expert_actions = states.to('cuda'), expert_actions.to('cuda')

        # compute target
        target_t, _ = self.policy(states)

        # make hook for jacobian
        def inner_closure(model_outputs):
            inner_loss = (model_outputs-expert_actions.detach()).pow(2).sum()
            return inner_loss

        # get linearization term
        self.optimizer.zero_grad()
        dlt_dft = torch.autograd.functional.jacobian(inner_closure, target_t).detach() # n by m
        assert dlt_dft.shape == target_t.shape

        # update grad-norm
        if self.grad_sum:
            self.grad_sum += torch.norm(dlt_dft,2).pow(2).detach()
        else:
            self.grad_sum = torch.norm(dlt_dft,2).pow(2).detach()

        # compute eta ( divide by batch size to make it less aggressive )
        eta = self.eta * (self.grad_sum).pow(0.5) + 1e-8

        # step surrogate
        for m in range(self.args.m):
            #
            self.optimizer.zero_grad()
            # linearized term
            target, _ = self.policy(states)
            loss = dlt_dft*target
            # regularization term
            reg_term = (target-target_t.detach()).pow(2)
            # compute full surrogate
            surr = (loss / eta + reg_term ).mean()
            # backprop
            surr.backward()
            # step
            self.optimizer.step()

        # compute grad_norm
        self.optimizer.zero_grad()
        mean, log_std = self.policy(states)
        loss = (mean-expert_actions).pow(2).mean()
        loss.backward()
        grad_norm = self.compute_grad().detach().pow(2).mean()

        # step optimizer
        self.updates += 1

        # store
        self.info = {'sso_ogd_loss':  loss,
                     'grad_norm': grad_norm}
        # return computed loss
        return loss
