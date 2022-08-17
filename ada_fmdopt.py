
# imports
import torch
import numpy as np
from copy import deepcopy
import time

# local imports
from helpers import *
from lsopt import LSOpt

# linesearch optimizer
# linesearch optimizer
class Ada_FMDOpt(torch.optim.Optimizer):
    def __init__(self, params, m=1,
                 div_op = lambda f,f1: torch.norm(f-f1).pow(2),
                 inner_optim = LSOpt, eta=1e-3, stoch_reg=True,
                 surr_optim_args={'init_step_size':2.},
                 total_steps = 1000):
        params = list(params)
        super().__init__(params, {})

        # create some local tools
        self.params = params
        self.m = m
        self.stoch_reg = stoch_reg
        # set eta and the divergence
        self.inner_optim = inner_optim(self.params,**surr_optim_args)
        self.div_op = div_op
        self.eta =  eta
        self.ada_scaling = torch.tensor(0., device='cuda')

        # preset eta (parameter-wise / diagnol only)
        for inner_opt in self.inner_optim.param_groups[0]['params']:
            inner_opt.data = inner_opt.data.to('cuda')

        # store state for debugging
        self.state['outer_steps'] = 0
        self.state['inner_steps'] = 0
        self.state['inner_backtracks'] = 0
        self.state['step_time'] = None
        self.state['inner_step_size'] = None
        self.state['grad_evals'] = 0
        self.state['function_evals'] = 0

    @staticmethod
    def copy_params(target, source):
        """ copies nueral network parameters between to networks. """
        for target_param, param in zip(target, source):
            target_param.data.copy_(param.data)

    def step(self, closure, clip_grad=False):

        # set initial step size
        start = time.time()
        self.state['outer_steps'] += 1

        # compute loss + grad for eta computation
        loss, f_t, F_t = closure(call_backward=False)
        loss.backward(inputs=f_t) 
        self.ada_scaling += torch.norm(f_t.grad).pow(2).detach()

        # construct surrogate-loss to optimize (avoids extra backward calls)
        def surrogate(call_backward=True):
            loss, f, F = closure(call_backward=False)
            #
            if self.stoch_reg:
                reg_term = self.div_op(f,f_t.detach())
            else:
                reg_term = self.div_op(F,F_t.detach())
            #
            surr = loss + self.eta * torch.sqrt(self.ada_scaling) * reg_term
            #
            if call_backward:
                surr.backward()
            return surr

        # now we take multiple steps over surrogate
        for m in range(0,self.m):
            # create surr-grad through params
            loss = surrogate(call_backward=True)
            current_loss = self.inner_optim.step(surrogate)
            self.state['inner_steps'] += 1
            self.state['inner_backtracks'] += self.inner_optim.state['n_backwards']
            self.state['grad_evals'] += 1

        # update internal logs everywhere
        self.state['function_evals'] = self.inner_optim.state['function_evals']
        self.state['step_time'] = timer(start,time.time())
        self.state['inner_step_size'] = self.inner_optim.state['step_size']

        # return loss
        return current_loss
