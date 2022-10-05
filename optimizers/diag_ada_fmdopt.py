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
class Diag_Ada_FMDOpt(SGD_FMDOpt):
    def __init__(self, params, m=1, eta_schedule = 'constant',
                 inner_optim = LSOpt, eta=1e3,
                 surr_optim_args={'lr':1.}, reset_lr_on_step=True,
                 total_steps = 1000, total_data_points=None):
        params = list(params)
        super().__init__(params, m , eta_schedule ,  inner_optim , eta,
                     surr_optim_args , reset_lr_on_step , total_steps )
        # set total_data points
        self.total_data_points = total_data_points
        self.dual_coord = None

    def step(self, closure, data_idxs, clip_grad=False):

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

        # initialize dual coordinate scaling
        if self.dual_coord is None:
            if len(f_t.shape)==1:
                self.dual_coord = torch.zeros((self.total_data_points,1)).cuda().detach()
            else:
                self.dual_coord = torch.zeros((self.total_data_points,f_t.detach().shape[-1])).cuda().detach()

        # produce some 1 by m (n=batch-size, m=output of f)
        dlt_dft = torch.autograd.functional.jacobian(inner_closure, f_t).detach() # n by m

        # update dual coords
        self.dual_coord[data_idxs,:] += dlt_dft.pow(2).detach()

        # construct surrogate-loss to optimize (avoids extra backward calls)
        def surrogate(call_backward=True):
            # force
            self.zero_grad()
            # f = n by m
            loss, f, inner_closure = closure(call_backward=False)
            # m by d -> 1
            loss = torch.sum(dlt_dft*f / ( self.eta * self.dual_coord[data_idxs].pow(0.5)))
            # force inner product
            reg_term = (f - f_t.detach()).pow(2)
            # compute full surrogate
            surr = (loss + reg_term.sum()) / batch_size
            # do we differentiate
            if call_backward:
                surr.backward()
            # return loss
            return surr

        # make sure we take big steps
        if self.reset_lr_on_step:
            self.inner_optim.state['step_size'] = self.init_step_size

        # check improvement
        last_loss = None

        # now we take multiple steps over surrogate
        for m in range(0,self.m):

            # get loss
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
