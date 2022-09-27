# imports
import torch
import numpy as np
from copy import deepcopy
import time

# local imports
from helpers import *
from optimizers.lsopt import LSOpt
from optimizers.sgd_fmdopt import SGD_FMDOpt

# linesearch optimizer
class Ada_FMDOpt(SGD_FMDOpt):
    def __init__(self, params, m=1, eta_schedule = 'constant',
                 inner_optim = LSOpt, eta=1e3,
                 surr_optim_args={'lr':1.}, reset_lr_on_step=True,
                 total_steps = 1000):
        params = list(params)
        super().__init__(params, m , eta_schedule ,  inner_optim , eta,
                     surr_optim_args , reset_lr_on_step , total_steps )
        # create some local tools
        self.grad_sum = None

    def step(self, closure, clip_grad=False):

        #======================================================
        # closure info
        # .... comments go here
        #======================================================

        # set initial step size
        self.start = time.time()
        self.state['outer_steps'] += 1

        # compute loss + grad for eta computation
        _, f_t, inner_closure = closure(call_backward=False)
        batch_size = torch.tensor(f_t.shape[0], device='cuda')

        # produce some 1 by m (n=batch-size, m=output of f)
        dlt_dft = torch.autograd.functional.jacobian(inner_closure, f_t).detach() # n by m

        # update grad-norm
        if self.grad_sum:
            self.grad_sum += torch.norm(dlt_dft,2).pow(2).detach()
        else:
            self.grad_sum = torch.norm(dlt_dft,2).pow(2).detach()

        # set  eta schedule
        eta = self.eta * (self.grad_sum).pow(0.5)

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
            surr = (loss / eta + reg_term) / batch_size
            # do we differentiate
            if call_backward:
                surr.backward()
            # return loss
            return surr

        # ok.
        if self.reset_lr_on_step:
            self.inner_optim.state['step_size'] = self.init_step_size

        # check improvement
        last_loss = None

        # now we take multiple steps over surrogate
        for m in range(0,self.m):
            # compute loss
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
