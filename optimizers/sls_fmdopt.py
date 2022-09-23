
# imports
import torch
import numpy as np
from copy import deepcopy
import time

# local imports
from helpers import *
from optimizers.lsopt import LSOpt
from optimizers.sgd_fmdopt import SGD_FMDOpt

# helpers

# linesearch optimizer
class SLS_FMDOpt(SGD_FMDOpt):
    def __init__(self, params, m=1, eta_schedule = 'constant',
                 inner_optim = LSOpt, eta=1e3,
                 surr_optim_args={'lr':1.}, reset_lr_on_step=True,
                 total_steps = None, n_batches_per_epoch=None,
                 c=0.5, beta_update=0.9, expand_coeff=1.8):
        params = list(params)
        super().__init__(params, m , eta_schedule ,  inner_optim , eta,
                     surr_optim_args , reset_lr_on_step , total_steps )
        # create some local tools
        self.grad_sum = None
        self.init_eta = eta
        self.c =c
        self.beta_update = beta_update
        self.expand_coeff = expand_coeff

    def compute_functional_stepsize(self, inner_closure, f_t, dlt_dft):
        eta_prop = self.eta * self.expand_coeff
        for i in range(100):
            lhs = inner_closure(f_t - eta_prop * dlt_dft)
            rhs = inner_closure(f_t) - self.c * torch.norm(dlt_dft).pow(2)
            if lhs < rhs:
                eta_prop *= eta_prop * self.beta_update
            else:
                break
        return eta_prop

    def step(self, closure, clip_grad=False):

        # set initial step size
        self.start = time.time()
        self.state['outer_steps'] += 1
        self.state['surrogate_increase_flag'] = 0

        # compute loss + grad for eta computation
        loss_t, f_t, inner_closure = closure(call_backward=False)
        batch_size = torch.tensor(f_t.shape[0], device='cuda')

        # produce some 1 by m (n=batch-size, m=output of f)
        dlt_dft = torch.autograd.functional.jacobian(inner_closure, f_t).detach() # n by m

        # solve for eta
        self.eta = self.compute_functional_stepsize(inner_closure, f_t, dlt_dft)

        # set  eta schedule
        if self.eta_schedule == 'constant':
            eta = self.eta
        elif self.eta_schedule == 'stochastic':
            eta = self.eta * torch.sqrt(torch.tensor(self.state['outer_steps']).float())
        elif self.eta_schedule == 'exponential':
            eta = self.eta * torch.tensor((1/self.total_steps)**(-self.state['outer_steps']/self.total_steps)).float()
        else:
            raise Exception
        self.state['eta'] = eta
        # construct surrogate-loss to optimize (avoids extra backward calls)
        def surrogate(call_backward=True):
            #
            self.zero_grad()
            # f = n by m
            loss, f, inner_closure = closure(call_backward=False)
            # m by d -> 1
            loss = torch.sum(dlt_dft*f)
            # remove cap F
            reg_term = self.div_op(f,f_t.detach())
            # compute full surrogate
            surr = (loss + eta * reg_term) / batch_size 
            # do we differentiate
            if call_backward:
                surr.backward()
            # return loss
            return surr

        # check improvement
        last_loss = None

        # make sure we take big steps
        if self.reset_lr_on_step:
            self.inner_optim.state['step_size'] = self.init_step_size

        #
        for m in range(0,self.m):

            # compute the current loss
            current_loss = self.inner_optim.step(surrogate)

            # add in some stopping conditions
            if self.inner_optim.state['minibatch_grad_norm'] <= 1e-6:
                break

            # update internals
            self.state['inner_steps'] += 1
            self.state['grad_evals'] += 1

            # check we are improving in terms of the surrogate
            if last_loss:
                if last_loss < current_loss:
                    self.state['surrogate_increase_flag'] = 1
            else:
                last_loss = current_loss
        #
        self.log_info()

        # return loss
        return current_loss
