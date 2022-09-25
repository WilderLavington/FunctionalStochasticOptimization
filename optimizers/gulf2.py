
# imports
import torch
import numpy as np
from copy import deepcopy
import time

# local imports
from helpers import *
from optimizers.lsopt import LSOpt

from helpers import get_grad_norm, get_grad_list, get_random_string, update_exp_lr, update_stoch_lr

# helpers

# linesearch optimizer
class GULF2(torch.optim.Optimizer):
    def __init__(self, params, reg_alpha=1e-2, eta=1e3, p=2,
                 surr_optim_args={'lr':1.},
                 total_steps = 1000):
        params = list(params)
        super().__init__(params, {})

        # create some local tools
        self.params = params
        self.total_steps = total_steps
        self.p = p

        # set eta and the divergence
        self.inner_optim = torch.optim.SGD(self.params, **surr_optim_args)
        self.div_op = lambda f, ft: torch.norm(f-ft,2).pow(2)
        self.eta = eta # please rename

        # store state for debugging
        self.state['outer_steps'] = 0
        self.state['inner_steps'] = 0
        self.state['grad_evals'] = 0
        self.state['function_evals'] = 0

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

    def log_info(self):
        # try logging (generalized for different inner-optimizers )
        try:
            assert isinstance(self.inner_optim.state['function_evals'], int)
            self.state['function_evals'] = self.inner_optim.state['function_evals']
            self.state['inner_step_size'] = self.inner_optim.state['step_size']
            self.state['outer_stepsize'] = 1/eta
        except:
            self.state['function_evals'] += 1
            self.state['inner_step_size'] = self.inner_lr
        self.state['step_time'] = timer(self.start,time.time())
        return None

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

        # construct surrogate-loss to optimize (avoids extra backward calls)
        def surrogate(call_backward=True):
            #
            self.zero_grad()
            # f = n by m
            loss, f, inner_closure = closure(call_backward=False)
            # m by d -> 1
            loss = torch.sum(dlt_dft*f) / self.eta
            # remove cap F
            reg_term = self.div_op(f,f_t.detach())
            # compute full surrogate
            surr = (loss + reg_term) / batch_size
            #
            R = torch.norm(torch.nn.utils.parameters_to_vector(self.params), self.p).pow(self.p)
            # do we differentiate
            if call_backward:
                (surr + self.reg_alpha * R).backward()
            # return loss
            return surr + self.reg_alpha * R

        # compute the current loss
        current_loss = self.inner_optim.step(surrogate)

        # update internals
        self.state['inner_steps'] += 1
        self.state['grad_evals'] += 1
        self.state['function_evals'] += 1

        #
        self.log_info()

        # return loss
        return current_loss
