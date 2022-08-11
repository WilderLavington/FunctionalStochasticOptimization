
# imports
import torch
import numpy as np
from copy import deepcopy
import time

# local imports
from helpers import *
from lsopt import LSOpt

# linesearch optimizer
class FMDOpt(torch.optim.Optimizer):
    def __init__(self, params, m=1, eta_optim = torch.optim.SGD,
                 div_op = lambda f,f1: torch.norm(f-f1).pow(2),
                 inner_optim = LSOpt, eta_optim_args={'lr':1e-4},
                 surr_optim_args={'init_step_size':2.}):
        params = list(params)
        super().__init__(params, {})

        # create some local tools
        self.params = params
        self.m = m

        # set eta and the divergence
        self.eta_optim_gen = lambda : self.optimizer_to(eta_optim(deepcopy(self.params),**eta_optim_args), 'cuda')
        self.inner_optim_gen = lambda : self.optimizer_to(inner_optim(deepcopy(self.params),**surr_optim_args), 'cuda')
        self.eta_optim = self.eta_optim_gen()
        self.inner_optim = self.inner_optim_gen()
        self.div_op = div_op

        # preset eta (parameter-wise / diagnol only)
        self.eta = deepcopy(self.params)

        # store state for debugging
        self.state['outer_steps'] = 0
        self.state['inner_steps'] = 0
        self.state['loss'] = None
        self.state['step_time'] = None
        self.state['inner_step_size'] = None
        self.state['n_forwards'] = 0
        self.state['n_backwards'] = 0
        self.state['grad_evals'] = 0
        self.state['function_evals'] = 0

    @staticmethod
    def optimizer_to(optim, device):
        for param in optim.state.values():
            # Not sure there are any global tensors in the state dict
            if isinstance(param, torch.Tensor):
                param.data = param.data.to(device)
                if param._grad is not None:
                    param._grad.data = param._grad.data.to(device)
            elif isinstance(param, dict):
                for subparam in param.values():
                    if isinstance(subparam, torch.Tensor):
                        subparam.data = subparam.data.to(device)
                        if subparam._grad is not None:
                            subparam._grad.data = subparam._grad.data.to(device)
        return optim
    @staticmethod
    def copy_params(target, source):
        """ copies nueral network parameters between to networks. """
        for target_param, param in zip(target, source):
            target_param.data.copy_(param.data)
    @staticmethod
    def copy_grads(target, source):
        """ copies nueral network gradients between to networks. """
        for target_param, param in zip(target, source):
            if target_param.grad is None:
                with torch.no_grad():
                    target_param.grad = torch.zeros(param.grad.shape)
            target_param.grad.copy_(param.grad)
    @staticmethod
    def add_grads(target, source):
        """ copies nueral network gradients between to networks. """
        for target_param, param in zip(target, source):
            if target_param.grad is None:
                with torch.no_grad():
                    target_param.grad = torch.zeros(param.grad.shape)
            target_param.grad.add_(param.grad)
    @staticmethod
    def mult_grads(target, source):
        """ copies nueral network gradients between to networks. """
        for target_param, param in zip(target, source):
            if target_param.grad is None:
                with torch.no_grad():
                    target_param.grad = torch.zeros(param.grad.shape)
            target_param.grad.mul_(param.grad)
    @staticmethod
    def grad_param_prod(target, source):
        dot_prod = torch.tensor(0.)
        for target_param, param in zip(target, source):
            if target_param.grad is None:
                with torch.no_grad():
                    target_param.grad = torch.zeros(param.grad.shape)
            dot_prod += torch.dot(target_param.grad,param.data)
        return dot_prod

    def compute_eta(self):
        # get current params
        current_params = deepcopy(self.eta_optim.param_groups[0]['params'])
        # step eta_optimizer
        self.eta_optim.step()
        new_params = self.eta_optim.param_groups[0]['params']
        # manually compute pre-conditioner based on update
        for current, new, eta in zip(current_params, new_params, self.eta):
            eta = new.grad / (current - new + 1e-12*torch.rand(current.size()))
        return self.eta

    def step(self, closure, clip_grad=False):

        # set initial step size
        self.state['n_forwards'] += 1
        self.state['grad_evals'] += 1
        self.state['outer_steps'] += 1
        start = time.time()

        # compute loss + grad for eta computation
        loss_t, f_t, y = closure(call_backward=True)

        # save the current parameters + grad info
        params_current = deepcopy(self.params)

        # replace gradients in eta-optim
        self.copy_grads(self.eta_optim.param_groups[0]['params'], self.params)

        # step eta_optim to compute what ever eta was
        eta = self.compute_eta()

        # construct surrogate-loss to optimize (avoids extra backward calls)
        def first_surrogate(call_backward=True, loss_backwards=False):
            # zero out the gradient
            self.zero_grad()
            # compute gradient through reg term
            reg_term = self.div_op(f_t,f_t.detach())
            reg_term.backward()
            # scale gradient update by eta from eta optim
            self.mult_grads(self.params, self.eta)
            #  add scaled grad to loss grad
            self.add_grads(self.params, self.eta_optim.param_groups[0]['params'])
            #
            surr = loss + self.grad_param_prod(self.params, self.params)
            #
            return loss

        # take single step in surrogate function
        self.copy_grads(self.inner_optim.params, self.params)
        current_loss = self.inner_optim.step(first_surrogate)
        self.state['inner_steps'] += 1
        self.state['loss'] = current_loss
        print('yeet.')
        # set general surrogate loss now that we have taken first step
        def general_surrogate(call_backward=True):
            # zero out the gradient
            self.zero_grad()
            # compute
            reg_term = self.div_op(f,f_t)
            reg_term.backward()
            #
            loss, f, y = closure(call_backward=False)
            # surr = loss + (1 / eta) * self.div_op(f-f_t)
            surr = loss + (1 / self.eta_optim.param_groups[0]['lr'])

            #
            return loss

        # now we take multiple steps over surrogate
        if self.m > 1:
            for m in range(1,self.m+1):
                self.state['grad_evals'] += 1
                current_loss = self.inner_optim.step(general_surrogate)
                self.state['inner_steps'] += 1
                self.state['loss'] = current_loss

        # update parameters everywhere for the next step
        self.copy_params([group['params'] for group in self.eta_optim.param_groups][0], self.inner_optim.params)
        self.copy_params(self.params, self.inner_optim.params)
        self.state['function_evals'] = self.eta_optim.state['function_evals']
        self.state['step_time'] = timer(start,time.time())
        self.state['inner_step_size'] = self.inner_optim.state['step_size']

        # return loss
        return current_loss
