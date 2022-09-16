
# general imports
import torch
import numpy as np
import matplotlib.pyplot as plt
from copy import deepcopy
from tqdm import tqdm
import wandb
import torch.nn as nn
import numpy as np
from time import time
import pathlib
from torch.optim import SGD, Adam, Adagrad
import os

# get local imports
from models import DiscreteLinearModel, ContinuousLinearModel, LinearNueralNetworkModel
from load_exp import load_model, load_dataset
from optimizers.sgd_fmdopt import SGD_FMDOpt
from optimizers.ada_fmdopt import Ada_FMDOpt
from optimizers.diag_ada_fmdopt import Diag_Ada_FMDOpt
from optimizers.lsopt import LSOpt
from optimizers.sadagrad import Sadagrad
from parser import *
from train import *
from helpers import get_grad_norm, get_grad_list, get_random_string, update_exp_lr, update_stoch_lr

def main():

    # get arguments
    args, parser = get_args()



    # set seeds
    torch.manual_seed(args.seed)
    np.random.seed(args.seed)

    # make sure configs match for mfac
    assert ((args.dataset_name=='synth') and (args.loss == 'MatrixFactorization')) \
        or ((args.loss != 'MatrixFactorization') and (args.dataset_name!='synth'))

    # initialize weights and biases runs
    wandb.init(project=args.project, entity=args.entity, config=args, group=args.group)
    pathlib.Path('logs/'+args.folder_name).mkdir(parents=True, exist_ok=True)

    # get dataset  and model
    X, y = load_dataset(data_set_id=args.dataset_name, data_dir='datasets/', loss=args.loss)
    model, loss_func, L = load_model(data_set_id=args.dataset_name, loss=args.loss, X=X, y=y)

    # set "optimal stepsize"
    args.stepsize = 10**args.log_eta if not args.use_optimal_stepsize else (1/L)

    # set batch size to fullbatch for gradient decent
    args.batch_size = y.shape[0] if args.fullbatch else args.batch_size

    # to account for batch-size (e.g. make sure we take more steps with bigger batches)
    if args.normalize_epochs_lengths:
        args.m = 1 if args.algo in ['SGD', 'LSOpt', 'Adam', 'Adagrad', 'Sadagrad'] else args.m
        args.epochs = max(int(args.episodes * (1 / args.m) * (args.batch_size / y.shape[0])), args.min_epochs)
    else:
        args.epochs = max(int(args.episodes * (args.batch_size / y.shape[0])), args.min_epochs)
        assert self.eta_schedule != 'exponential'

    # compute total steps given the # of epochs
    args.total_steps = int(args.epochs * (y.shape[0] / args.batch_size))

    # set optimization algorithm
    if args.algo == 'SGD':
        optim = torch.optim.SGD(model.parameters(), lr=args.stepsize)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=True,
            total_rounds = args.epochs, batch_size=args.batch_size,
            update_lr_type = args.eta_schedule)

    elif args.algo == 'LSOpt':
        surr_optim_args = {'lr':args.init_step_size, 'c':args.c, 'n_batches_per_epoch': y.shape[0] / args.batch_size,
            'beta_update':args.beta_update, 'expand_coeff':args.expand_coeff, 'eta_schedule':args.eta_schedule,
            'total_steps':args.total_steps}
        optim = LSOpt(model.parameters(), **surr_optim_args)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=False,
            total_rounds=args.epochs, batch_size=args.batch_size, single_out=True)

    elif args.algo == 'Sadagrad':
        assert args.eta_schedule=='constant'
        args.stepsize = 10**args.log_eta if not args.use_optimal_stepsize else  1e-2
        optim = Sadagrad(model.parameters(), lr=args.stepsize)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=True,
            total_rounds = args.epochs, batch_size=args.batch_size,
            update_lr_type = 'constant')

    elif args.algo == 'SGD_FMDOpt':
        div_measure = lambda f, ft: torch.norm(f-ft,2).pow(2) / args.batch_size / 2.
        L = L_map[args.dataset_name]
        args.stepsize = 10**args.log_eta if not args.use_optimal_stepsize else 1.
        if args.inner_opt =='LSOpt':
            surr_optim_args = {'lr':args.init_step_size, 'c':args.c, 'n_batches_per_epoch': y.shape[0] / args.batch_size,
                'beta_update':args.beta_update, 'expand_coeff':args.expand_coeff, 'eta_schedule':'constant'}
        else:
            surr_optim_args = {'lr':args.init_step_size}
        optim = SGD_FMDOpt(model.parameters(), inv_eta=args.stepsize, div_op=div_measure,
                eta_schedule=args.eta_schedule, inner_optim=eval(args.inner_opt),  stoch_reg=args.stoch_reg,
                surr_optim_args=surr_optim_args, m=args.m, total_steps=args.total_steps)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=False,
            total_rounds = args.epochs, batch_size = args.batch_size,
            update_lr_type='constant')

    elif args.algo == 'Ada_FMDOpt':
        assert args.eta_schedule=='constant'
        div_measure = lambda f, ft: torch.norm(f-ft,2).pow(2) / args.batch_size / 2.
        args.stepsize = 10**args.log_eta if not args.use_optimal_stepsize else 1.
        if args.inner_opt =='LSOpt':
            surr_optim_args = {'lr':args.init_step_size, 'c':args.c, 'n_batches_per_epoch': y.shape[0] / args.batch_size,
                'beta_update':args.beta_update, 'expand_coeff':args.expand_coeff, 'eta_schedule':'constant'}
        else:
            surr_optim_args = {'lr':args.init_step_size}
        optim = Ada_FMDOpt(model.parameters(), inv_eta=args.stepsize, div_op=div_measure,
                eta_schedule=args.eta_schedule, inner_optim=eval(args.inner_opt),  stoch_reg=args.stoch_reg,
                surr_optim_args=surr_optim_args, m=args.m, total_steps=args.total_steps)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=False,
            total_rounds = args.epochs, batch_size = args.batch_size,
            update_lr_type='constant')

    elif args.algo == 'Diag_Ada_FMDOpt':
        assert args.eta_schedule=='constant'
        div_measure = lambda f, ft: torch.norm(f-ft,2).pow(2) / args.batch_size / 2.
        args.stepsize = 10**args.log_eta if not args.use_optimal_stepsize else 1.
        if args.inner_opt =='LSOpt':
            surr_optim_args = {'lr':args.init_step_size, 'c':args.c, 'n_batches_per_epoch': y.shape[0] / args.batch_size,
                'beta_update':args.beta_update, 'expand_coeff':args.expand_coeff, 'eta_schedule':'constant'}
        else:
            surr_optim_args = {'lr':args.init_step_size}
        optim = Diag_Ada_FMDOpt(model.parameters(), inv_eta=args.stepsize,
                eta_schedule=args.eta_schedule, inner_optim=eval(args.inner_opt),
                surr_optim_args=surr_optim_args, m=args.m, total_steps=args.total_steps,
                total_data_points = y.shape[0])
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=False,
            total_rounds = args.epochs, batch_size = args.batch_size, include_data_id=True,
            update_lr_type='constant')

    elif args.algo == 'Adam':
        assert args.eta_schedule == 'constant'
        args.stepsize = 10**args.log_eta if not args.use_optimal_stepsize else  1e-3
        optim = torch.optim.Adam(model.parameters(), lr=args.stepsize)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=True,
            total_rounds = args.epochs, batch_size=args.batch_size )

    elif args.algo == 'Adagrad':
        assert args.eta_schedule == 'constant'
        args.stepsize = 10**args.log_eta if not args.use_optimal_stepsize else 1e-2
        optim = torch.optim.Adagrad(model.parameters(), lr=args.stepsize)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=True,
            total_rounds = args.epochs, batch_size=args.batch_size )
    else:
        raise Exception()

    # store logs
    if args.randomize_folder:
        #
        file=get_random_string(16)
        try:
            os.makedirs('logs/database/'+file)
        except FileExistsError:
            print("File already exists")
        #
        logs = torch.save(logs, 'logs/database/'+file+'/'+args.file_name+'.pt')
        logs = torch.save(args, 'logs/database/'+file+'/args.pt')
    else:
        logs = torch.save(logs, 'logs/'+args.folder_name+args.file_name+'.pt')
        logs = torch.save(args, 'logs/'+args.folder_name+'args.pt')
    #
    return

if __name__ == "__main__":
    main()
