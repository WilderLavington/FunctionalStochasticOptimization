
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
        # self.beta_update = 0.8
        # self.expand_coeff = 1.8
        self.eta_schedule = 'stochastic'
        self.eta = 1 / self.lr
        surr_optim_args = {'lr':args.lr, 'c':args.c,
            'beta_update':args.sls_beta_update, 'expand_coeff':args.expand_coeff }
        optim_args = {'eta':1/args.lr, 'eta_schedule':args.eta_schedule,
                      'surr_optim_args':surr_optim_args,  'inner_optim': LSOpt,
                      'm': self.args.m, 'total_steps': self.episodes, 'reset_lr_on_step': True}
        self.optimizer = SGD_FMDOpt(self.policy.parameters(), **optim_args)
        self.single_out = 0

    def update_parameters(self, new_examples):
        # grab examples
        _, (states, expert_actions, _, _), self.avg_return = new_examples
        self.replay_size = int(self.args.samples_per_update)
        self.interactions += int(self.args.samples_per_update)
        # move everything to device
        self.optimizer.zero_grad()
        self.policy.to(self.device)
        states, expert_actions = states.to('cuda'), expert_actions.to('cuda')
        # reset_lr
        self.optimizer.inner_optim.state['step_size'] = self.lr
        # create closure for line-search
        def closure(call_backward=True, single_out=self.single_out):
            # zero out gradient
            self.optimizer.zero_grad()
            # grab loss
            mean, log_std = self.policy(states)
            loss = (mean-expert_actions).pow(2).mean()
            # make an inner-closure stepper
            def inner_closure(model_outputs):
                inner_loss = (model_outputs-expert_actions).pow(2).sum()
                return inner_loss
            # create grad
            if call_backward==True:
                loss.backward()
            # for line-search
            if not self.single_out:
                return loss, mean, inner_closure
            else:
                return loss
        # step optimizer
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

# stochastic surrogate + baselines
class OSLS(OGD):

    def __init__(self, env, args):
        super(OSLS,self).__init__(env, args)
        self.lr = 10**args.log_lr
        self.algo = 'OSLS'
        self.episodes = self.args.episodes
        self.batch_size = self.samples
        # self.beta_update = 0.8
        # self.expand_coeff = 1.8
        optim_args = {'lr':self.lr, 'c':args.c,
            'beta_update':args.sls_beta_update, 'expand_coeff':args.expand_coeff}
        self.optimizer = LSOpt(self.policy.parameters(), **optim_args)
        self.replay_size = self.samples
        self.single_out = 1


class SSO_SLS(SSO_OGD):

    def __init__(self, env, args):
        super(SSO_SLS,self).__init__(env, args)
        self.lr = 10**args.log_lr
        self.algo = 'SSO_SLS'
        self.episodes = self.args.episodes
        self.batch_size = self.samples
        # self.beta_update = 0.8
        # self.expand_coeff = 1.8
        self.outer_c = 0.5
        self.eta_schedule = 'stochastic'
        self.eta = 1 / self.lr
        surr_optim_args = {'lr':self.lr, 'c':args.c, 'n_batches_per_epoch': self.episodes,
            'beta_update':args.sls_beta_update, 'expand_coeff':args.expand_coeff, 'eta_schedule':'constant'}
        optim_args = {'eta':self.eta, 'eta_schedule':args.eta_schedule, 'c': self.outer_c,
                      'surr_optim_args':surr_optim_args,
                      'm': args.m, 'total_steps': self.episodes, 'reset_lr_on_step': True}
        self.optimizer = SLS_FMDOpt(self.policy.parameters(), **optim_args)
        self.single_out = 0

class SSO_Sadagrad(SSO_OGD):

    def __init__(self, env, args):
        super(SSO_Sadagrad,self).__init__(env, args)
        self.lr = 10**args.log_lr
        self.algo = 'SSO_Sadagrad'
        self.episodes = self.args.episodes
        self.batch_size = self.samples
        # self.beta_update = 0.8
        # self.expand_coeff = 1.8
        self.outer_c = 0.5
        self.eta_schedule = 'constant'
        self.eta = 1 / self.lr
        surr_optim_args = {'lr':args.lr, 'c':args.c, 'n_batches_per_epoch': self.episodes,
            'beta_update':args.sls_beta_update, 'expand_coeff':args.expand_coeff, 'eta_schedule':'constant'}
        optim_args = {'eta':1/args.lr, 'eta_schedule':args.eta_schedule,
                      'surr_optim_args':surr_optim_args,
                      'm': 25, 'total_steps': self.episodes, 'reset_lr_on_step': True}
        self.optimizer = Ada_FMDOpt(self.policy.parameters(), **optim_args)
        self.single_out = 0
