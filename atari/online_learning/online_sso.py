
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
from atari.online_learning.algorithms import OGD
from optimizers.sgd_fmdopt import SGD_FMDOpt
from optimizers.ada_fmdopt import Ada_FMDOpt
from atari.online_learning.lsopt import LSOpt
from optimizers.sadagrad import Sadagrad
from optimizers.sls_fmdopt import SLS_FMDOpt
from optimizers.gulf2 import GULF2
from helpers import get_grad_norm

# stochastic surrogate + baselines
class OSLS(OGD):

    def __init__(self, env, args):
        super(OSLS,self).__init__(env, args)
        self.lr = 10**args.log_lr
        self.algo = 'OSLS'
        self.episodes = self.args.episodes
        self.batch_size = self.samples
        self.beta_update = 0.8
        self.expand_coeff = 1.8
        optim_args = {'lr':self.lr, 'c':args.c,
            'beta_update':args.sls_beta_update, 'expand_coeff':args.expand_coeff}
        self.optimizer = LSOpt(self.policy.parameters(), **optim_args)
        self.replay_size = self.samples

    def update_parameters(self, new_examples):

        # grab examples
        _, (states, expert_actions, _, _), self.avg_return = new_examples
        self.replay_size = int(self.args.samples_per_update)
        self.interactions += int(self.args.samples_per_update)
        # move everything to device
        self.optimizer.zero_grad()
        self.policy.to(self.device)
        states, expert_actions = states.to('cuda'), expert_actions.to('cuda')

        # create closure for line-search
        def closure(call_backward=True):
            self.optimizer.zero_grad()
            log_liklihood = self.policy.log_prob(states, expert_actions.reshape(-1))
            loss = -1 * log_liklihood.sum()
            if call_backward==True:
                loss.backward()
            return loss

        # step
        self.optimizer.step(closure)

        # compute grad_norm
        self.optimizer.zero_grad()
        loss = -1 * self.policy.log_prob(states, expert_actions).mean()
        loss.backward()
        grad_norm = get_grad_norm(self.policy.parameters())

        # step optimizer
        self.updates += 1
        # store
        self.info = {'osls_loss':  loss,
                     'grad_norm': grad_norm}

        # return computed loss

class SSO_OGD(OGD):

    def __init__(self, env, args):
        super(SSO_OGD,self).__init__(env, args)
        self.lr = 10**args.log_lr
        self.algo = 'SSO_OGD'
        self.episodes = self.args.episodes
        self.batch_size = self.samples
        self.steps = torch.tensor(0.)
        self.eta = 1 / self.lr
        self.surr_optim_args = {'lr': 10., 'c': 0.05,
            'beta_update':args.sls_beta_update, 'expand_coeff':args.expand_coeff }
        # surr_optim_args = {'lr': 10**(-3.) }
         #SGD_FMDOpt(self.policy.parameters(), **optim_args)
        # self.optimizer = torch.optim.Adam(self.policy.output_linear.parameters(),lr=1e-3)
        self.single_out = 0
        for p in self.policy.parameters():
            p.data = p.data.to('cuda')
        self.loss_func = torch.nn.CrossEntropyLoss(reduction='sum')
        self.eval_loss_func = torch.nn.CrossEntropyLoss(reduction='mean')

    @staticmethod
    def compute_grad_norm(grad_list):
        grad_norm = 0.
        grad_list = [g.reshape(-1) for g in grad_list]
        flat_grad = torch.cat(grad_list, dim=0).reshape(-1)
        grad_norm = torch.sqrt(flat_grad.pow(2).sum())
        return grad_norm
    @staticmethod
    def get_grad_list(params):
        g_list = []
        for p in params:
            grad = p.grad
            if grad is None:
                grad = torch.tensor( 0., device='cuda')
            g_list += [grad.reshape(-1)]
        return g_list
    @staticmethod
    def copy_params(target, source):
        """ copies nueral network parameters between to networks. """
        for target_param, param in zip(target, source):
            target_param.data.copy_(param.data)

    def update_parameters(self, new_examples):

        # grab examples
        _, (states, expert_actions, _, _), self.avg_return = new_examples
        self.replay_size = int(self.args.samples_per_update)
        self.interactions += int(self.args.samples_per_update)
        self.steps += torch.tensor(1.)
        # move everything to device
        self.policy.to(self.device)
        states, expert_actions = states.to('cuda'), expert_actions.long().to('cuda').reshape(-1)

        # compute target
        self.optimizer = LSOpt(self.policy.output_linear.parameters(), **self.surr_optim_args)

        feature_space_t = self.policy.transform_state(states)
        target_t = self.policy.output_linear(feature_space_t)
        target_dims = 1 if len(target_t.shape)==1 else torch.prod(torch.tensor(target_t.shape[1:]))

        # make hook for jacobian
        def inner_closure(model_outputs):
            loss = self.loss_func(model_outputs, expert_actions)
            return loss

        # get linearization term
        self.optimizer.zero_grad()
        dlt_dft = torch.autograd.functional.jacobian(inner_closure, target_t).detach() # n by m
        assert dlt_dft.shape == target_t.shape

        #
        eta = self.eta * torch.sqrt(self.steps)

        # surrogate
        def surrogate(call_backward=True):
            #
            self.optimizer.zero_grad()
            # linearized term
            if self.policy.model_type == 'LinearPolicy':
                target = self.policy.output_linear(feature_space_t.detach())
            else:
                target = self.policy(states)
            loss = dlt_dft*target
            # regularization term
            reg_term = (target-target_t.detach()).pow(2) / target_dims
            # compute full surrogate
            surr = (loss +  eta * reg_term ).mean()
            # backprop
            if call_backward:
                surr.backward()
            #
            return surr

        # reset step-size
        self.optimizer.state['step_size'] = 1.

        # step surrogate
        for m in range(self.args.m):
            # step
            surr = self.optimizer.step(surrogate)
            self.optimizer.zero_grad()
            surr = surrogate(call_backward=True)
        # print(m, 'step.', surr.item(), self.compute_grad_norm(self.get_grad_list(self.policy.output_linear.parameters())).item())
        # compute grad_norm
        self.optimizer.zero_grad()
        target_t = self.policy(states)
        loss = self.eval_loss_func(target_t, expert_actions)
        loss.backward()
        grad_norm =  self.compute_grad_norm(self.get_grad_list(self.policy.output_linear.parameters())).item()

        # step optimizer
        self.updates += 1

        # store
        self.info = {'sso_ogd_loss':  loss,
                     'grad_norm': grad_norm,
                     'eta': self.eta}
        # return computed loss
        return loss


class SSO_SLS(SSO_OGD):

    def __init__(self, env, args):
        super(SSO_SLS,self).__init__(env, args)
        self.algo = 'SSO_SLS'
        self.expand_coeff = 1.8
        self.beta_update = 0.8
        self.c = 0.1
        self.min_eta = 10**(-5.)
        self.max_eta = 10**(5.)

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
        self.steps += torch.tensor(1.)
        # move everything to device
        self.policy.to(self.device)
        states, expert_actions = states.to('cuda'), expert_actions.long().to('cuda').reshape(-1)

        # compute target
        self.optimizer = LSOpt(self.policy.output_linear.parameters(), **self.surr_optim_args)

        feature_space_t = self.policy.transform_state(states)
        target_t = self.policy.output_linear(feature_space_t)
        target_dims = 1 if len(target_t.shape)==1 else torch.prod(torch.tensor(target_t.shape[1:]))

        # make hook for jacobian
        def inner_closure(model_outputs):
            loss = self.loss_func(model_outputs, expert_actions)
            return loss

        # get linearization term
        self.optimizer.zero_grad()
        dlt_dft = torch.autograd.functional.jacobian(inner_closure, target_t).detach() # n by m
        assert dlt_dft.shape == target_t.shape

        # solve for eta + project it to make sure it does not explode
        self.eta = self.compute_functional_stepsize(inner_closure, target_t, dlt_dft)
        self.eta = max(self.min_eta, self.eta)
        self.eta = min(self.max_eta, self.eta)

        #
        eta = self.eta * torch.sqrt(self.steps)

        # surrogate
        def surrogate(call_backward=True):
            #
            self.optimizer.zero_grad()
            # linearized term
            if self.policy.model_type == 'LinearPolicy':
                target = self.policy.output_linear(feature_space_t.detach())
            else:
                target = self.policy(states)
            loss = dlt_dft*target
            # regularization term
            reg_term = (target-target_t.detach()).pow(2) / target_dims
            # compute full surrogate
            surr = (loss +  eta * reg_term ).mean()
            # backprop
            if call_backward:
                surr.backward()
            #
            return surr

        # reset step-size
        self.optimizer.state['step_size'] = 1.

        # step surrogate
        for m in range(self.args.m):
            # step
            surr = self.optimizer.step(surrogate)
            self.optimizer.zero_grad()
            surr = surrogate(call_backward=True)
        # print(m, 'step.', surr.item(), self.compute_grad_norm(self.get_grad_list(self.policy.output_linear.parameters())).item())
        # compute grad_norm
        self.optimizer.zero_grad()
        target_t = self.policy(states)
        loss = self.eval_loss_func(target_t, expert_actions)
        loss.backward()
        grad_norm =  self.compute_grad_norm(self.get_grad_list(self.policy.output_linear.parameters())).item()

        # step optimizer
        self.updates += 1

        # store
        self.info = {'sso_ogd_loss':  loss,
                     'grad_norm': grad_norm,
                     'eta': eta}
        # return computed loss
        return loss

class SSO_Sadagrad(SSO_OGD):

    def __init__(self, env, args):
        super(SSO_Sadagrad,self).__init__(env, args)
        self.algo = 'SSO_Sadagrad'
        self.grad_sum = None

    def update_parameters(self, new_examples):

        # grab examples
        _, (states, expert_actions, _, _), self.avg_return = new_examples
        self.replay_size = int(self.args.samples_per_update)
        self.interactions += int(self.args.samples_per_update)
        self.steps += torch.tensor(1.)
        # move everything to device
        self.policy.to(self.device)
        states, expert_actions = states.to('cuda'), expert_actions.long().to('cuda').reshape(-1)

        # compute target
        self.optimizer = LSOpt(self.policy.output_linear.parameters(), **self.surr_optim_args)

        feature_space_t = self.policy.transform_state(states)
        target_t = self.policy.output_linear(feature_space_t)
        target_dims = 1 if len(target_t.shape)==1 else torch.prod(torch.tensor(target_t.shape[1:]))

        # make hook for jacobian
        def inner_closure(model_outputs):
            loss = self.loss_func(model_outputs, expert_actions)
            return loss

        # get linearization term
        self.optimizer.zero_grad()
        dlt_dft = torch.autograd.functional.jacobian(inner_closure, target_t).detach() # n by m
        assert dlt_dft.shape == target_t.shape

        # update grad-norm
        if self.grad_sum:
            self.grad_sum += torch.norm(dlt_dft,2).pow(2).detach()
        else:
            self.grad_sum = torch.norm(dlt_dft,2).pow(2).detach()

        #
        eta = self.eta * (self.grad_sum).pow(0.5) + 1e-6

        # surrogate
        def surrogate(call_backward=True):
            #
            self.optimizer.zero_grad()
            # linearized term
            if self.policy.model_type == 'LinearPolicy':
                target = self.policy.output_linear(feature_space_t.detach())
            else:
                target = self.policy(states)
            loss = dlt_dft*target
            # regularization term
            reg_term = (target-target_t.detach()).pow(2) / target_dims
            # compute full surrogate
            surr = (loss / eta + reg_term ).mean()
            # backprop
            if call_backward:
                surr.backward()
            #
            return surr

        # reset step-size
        self.optimizer.state['step_size'] = 1.

        # step surrogate
        for m in range(self.args.m):
            # step
            surr = self.optimizer.step(surrogate)
            self.optimizer.zero_grad()
            surr = surrogate(call_backward=True)
        # compute grad_norm
        self.optimizer.zero_grad()
        target_t = self.policy(states)
        loss = self.eval_loss_func(target_t, expert_actions)
        loss.backward()
        grad_norm =  self.compute_grad_norm(self.get_grad_list(self.policy.output_linear.parameters())).item()

        # step optimizer
        self.updates += 1

        # store
        self.info = {'sso_ogd_loss':  loss,
                     'grad_norm': grad_norm,
                     'eta': eta}
        # return computed loss
        return loss
