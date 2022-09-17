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
        start = time.time()
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
            surr = (loss + eta * reg_term) / batch_size
            # do we differentiate
            if call_backward:
                surr.backward()
            # return loss
            return surr

        if self.reset_lr_on_step:
            self.inner_optim.state['step_size'] = self.init_step_size

        # now we take multiple steps over surrogate
        for m in range(0,self.m):
            current_loss = self.inner_optim.step(surrogate)
            self.state['inner_steps'] += 1
            self.state['grad_evals'] += 1

        # try logging (generalized for different inner-optimizers )
        try:
            assert isinstance(self.inner_optim.state['function_evals'], int)
            self.state['function_evals'] = self.inner_optim.state['function_evals']
            self.state['inner_step_size'] = self.inner_optim.state['step_size']
        except:
            self.state['function_evals'] += 1
            self.state['inner_step_size'] = self.inner_lr
        self.state['step_time'] = timer(start,time.time())

        # return loss
        return current_loss
