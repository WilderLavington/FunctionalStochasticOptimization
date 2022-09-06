
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
    def __init__(self, params, m=1, eta_schedule = 'constant',
                 div_op = lambda f,f1: torch.norm(f-f1).pow(2),
                 inner_optim = LSOpt, inv_eta=1e-3, stoch_reg=True,
                 surr_optim_args={'lr':1.},
                 total_steps = 1000):
        params = list(params)
        super().__init__(params, {})

        # create some local tools
        self.params = params
        self.m = m
        self.stoch_reg = stoch_reg
        self.total_steps = total_steps
        # set eta and the divergence
        self.inner_optim = inner_optim(self.params,**surr_optim_args)
        self.div_op = div_op
        self.eta =  1/inv_eta # please rename
        self.eta_schedule = eta_schedule
        self.inner_lr = surr_optim_args['lr']

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
        self.state['outer_step_size'] = None

    @staticmethod
    def compute_grad_norm(grad_list):
        grad_norm = 0.
        device = torch.device("cuda" if (torch.cuda.is_available()) else "cpu")
        # assert 1==0
        for g in grad_list:
            if g is None:
                continue
            if torch.sum(torch.mul(g, g)).device != device:
                grad_norm += torch.sum(torch.mul(g, g)).to(device)
            else:
                grad_norm += torch.sum(torch.mul(g, g))
        grad_norm = torch.sqrt(grad_norm)
        return grad_norm

    @staticmethod
    def get_grad_list(params):
        g_list = []
        for p in params:
            grad = p.grad
            if grad is None:
                grad = 0.
            g_list += [grad]
        return g_list

    @staticmethod
    def copy_params(target, source):
        """ copies nueral network parameters between to networks. """
        for target_param, param in zip(target, source):
            target_param.data.copy_(param.data)

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

        # produce some 1 by m (n=batch-size, m=output of f)
        dlt_dft = torch.autograd.functional.jacobian(inner_closure, f_t).detach() # n by m

        # set  eta schedule
        if self.eta_schedule == 'constant':
            eta = self.eta
        elif self.eta_schedule == 'stochastic':
            eta = self.eta * torch.sqrt(torch.tensor(self.state['outer_steps']).float())
        elif self.eta_schedule == 'exponential':
            eta = self.eta * torch.tensor((1/self.total_steps)**(-self.state['outer_steps']/self.total_steps)).float()
        else:
            raise Exception

        # construct surrogate-loss to optimize (avoids extra backward calls)
        def surrogate(call_backward=True):
            # f = n by m
            loss, f, inner_closure = closure(call_backward=False)
            # m by d -> 1
            loss = torch.sum(dlt_dft*f)
            # remove cap F
            reg_term = self.div_op(f,f_t.detach())
            # compute full surrogate
            surr = loss + eta * reg_term
            # do we differentiate
            if call_backward:
                surr.backward()
            # return loss
            return surr

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
            self.state['outer_stepsize'] = 1/eta
        except:
            self.state['function_evals'] += 1
            self.state['inner_step_size'] = self.inner_lr
        self.state['step_time'] = timer(start,time.time())

        # return loss
        return current_loss
