# imports
import torch
import numpy as np
from copy import deepcopy
import time

from helpers import *

# linesearch optimizer
class LSOpt(torch.optim.Optimizer):
    def __init__(self, params, init_step_size=1, n_batches_per_epoch=None,
                 c=0.001, beta_update=0.9, expand_coeff=1.8):
        params = list(params)
        super().__init__(params, {})
        assert beta_update < 1.
        assert expand_coeff > 1.
        # create some local tools
        self.params = params
        self.c = c
        self.expand_coeff = expand_coeff**(1. / n_batches_per_epoch)
        self.beta_b = beta_update
        self.init_step_size = init_step_size
        # store state for debugging
        self.state['step_size'] = init_step_size
        self.state['function_evals'] = 0
        self.state['grad_evals'] = 0

        print(self.c)

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
    def replace_params(model, params):
        zipped = zip([m for m in params], [m for m in model.parameters()])
        for p_new, p_current in zipped:
            p_current.data = p_new
        return model

    @staticmethod
    def check_armijo_conditions(step_size, loss, grad_norm,
                      loss_next, c, beta_b):
        found = 0
        # computing the new break condition
        break_condition = loss_next - \
            (loss - (step_size) * c * grad_norm**2)
        if (break_condition <= 0):
            found = 1
        else:
            # decrease the step-size by a multiplicative factor
            step_size = step_size * beta_b
        return found, step_size

    def step(self, closure, clip_grad=False):

        # =================================================
        # replace step with expanded current step for speed
        step_size = self.expand_coeff * self.state['step_size']

        # get loss and compute gradients
        loss = closure(call_backward=True)
        self.state['grad_evals'] += 1

        if clip_grad:
            torch.nn.utils.clip_grad_norm_(self.params, 0.25)

        # save the current parameters:
        params_current = deepcopy(self.params)
        grad_current = deepcopy(get_grad_list(self.params))
        grad_norm = compute_grad_norm(grad_current)

        # only do the check if the gradient norm is big enough
        with torch.no_grad():

            # take some steps
            for e in range(100):

                # =================================================
                # try a prospective step
                for p_next, p_current, g_current in zip(self.params, params_current, grad_current):
                    p_next.data = p_current - step_size * g_current

                # =================================================
                # figure out new loss
                loss_next = closure(call_backward=False)
                self.state['function_evals'] += 1

                # =================================================
                # Line search
                found, step_size = check_armijo_conditions(step_size, loss, grad_norm,
                                  loss_next, self.c, self.beta_b)

                # =================================================
                # stopping conditions
                if found or (step_size < 1e-6):
                    break
                else:
                    pass
        #
        print(e)
        self.state['step_size'] = step_size
        # return loss
        return loss
