
# imports
import torch
import numpy as np
from copy import deepcopy
import time

# local imports
from helpers import *
from lsopt import LSOpt

# linesearch optimizer
class SGD_FMDOpt(torch.optim.Optimizer):
    def __init__(self, params, m=1,
                 div_op = lambda f,f1: torch.norm(f-f1).pow(2),
                 inner_optim = LSOpt, eta=1e-3,
                 surr_optim_args={'init_step_size':2.}):
        params = list(params)
        super().__init__(params, {})

        # create some local tools
        self.params = params
        self.m = m

        # set eta and the divergence
        self.inner_optim = inner_optim(self.params,**surr_optim_args)
        self.div_op = div_op
        self.eta =  eta

        # preset eta (parameter-wise / diagnol only)
        for inner_opt in self.inner_optim.param_groups[0]['params']:
            inner_opt.data = inner_opt.data.to('cuda')

        # store state for debugging
        self.state['outer_steps'] = 0
        self.state['inner_steps'] = 0
        # self.state['loss'] = None
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
        _, f_t, _ = closure(call_backward=False)

        # construct surrogate-loss to optimize (avoids extra backward calls)
        def surrogate(call_backward=True):
            loss, f, _ = closure(call_backward=False)
            reg_term = self.div_op(f,f_t.detach())
            surr = loss + self.eta * reg_term
            if call_backward:
                surr.backward()
            return surr

        # now we take multiple steps over surrogate
        for m in range(0,self.m):
            # create surr-grad through params
            loss = surrogate(call_backward=True)
            current_loss = self.inner_optim.step(surrogate)
            self.state['inner_steps'] += 1
            # self.state['loss'] = current_loss
            self.state['grad_evals'] += 1

        # update internal logs everywhere
        self.state['function_evals'] = self.inner_optim.state['function_evals']
        self.state['step_time'] = timer(start,time.time())
        self.state['inner_step_size'] = self.inner_optim.state['step_size']

        # return loss
        return current_loss
