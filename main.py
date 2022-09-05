import torch
import numpy as np
import matplotlib.pyplot as plt
from copy import deepcopy
torch.manual_seed(1)
from tqdm import tqdm
import wandb
import torch.nn as nn
import argparse
import numpy as np
from time import time
import pathlib
# get local info
from models import DiscreteLinearModel, ContinuousLinearModel
from load_data import load_libsvm
from sgd_fmdopt import SGD_FMDOpt
from ada_fmdopt import Ada_FMDOpt
from lsopt import LSOpt
from sadagrad import Sadagrad
from helpers import get_grad_norm, get_grad_list, get_random_string, update_lr
from torch.optim import SGD, Adam, Adagrad
import os

def train_model(args, model, optim, loss_func, X, y, decay_lr=False, single_out=False,
            call_closure=False, total_rounds = 1000, batch_size=100, log_rate=1):

    # log stuff
    dataset = torch.utils.data.TensorDataset(X, y)
    data_generator = torch.utils.data.DataLoader(dataset, batch_size=batch_size,
        shuffle=True, drop_last=True)
    logs, s, starting_time = [], 0,  time()
    import_vals = ['inner_steps', 'avg_loss', 'function_evals', 'grad_evals',
            'step_time', 'inner_step_size', 'inner_backtracks', 'outer_stepsize']

    # iterate over epochs
    for t in tqdm(range(total_rounds)):

        # log everything
        if t % log_rate == 0:
            avg_loss = 0.
            grad_norm = 0.
            for X_batch, y_batch in data_generator:
                # put data onto the
                X_batch, y_batch = X_batch.cuda(), y_batch.cuda()
                def closure(call_backward=True):
                    # optim.zero_grad()
                    loss = loss_func(model(X_batch), y_batch)
                    if call_backward==True:
                        loss.backward()
                    return loss
                # add loss to average
                avg_loss += closure(call_backward=True).detach().cpu().numpy()
            # compute norm of cumulative gradient
            grad_norm += get_grad_norm(model.parameters()).detach().cpu().numpy()
            log_info = {'avg_loss': avg_loss / y.shape[0],
                        'optim_steps': s, 'function_evals': s, 'grad_evals': s,
                        'inner_backtracks': 0, 'inner_steps': 1,
                        'grad_norm': grad_norm / y.shape[0], 'eta_scale': args.stepsize,
                        'time_elapsed':  time() - starting_time}
            log_info.update({key:optim.state[key] for key in optim.state.keys() if key in import_vals})
            # log_info.update({'function_evals+grad_evals': log_info['function_evals']+log_info['grad_evals']})
            # # log info
            try:
                wandb.log(log_info)
            except:
                raise Exception
            logs.append(log_info)
            print('=========================================================')
            print(log_info)
            print('=========================================================')

        # step through data by sampling without replacement
        for X_batch, y_batch in tqdm(data_generator,leave=False):

            # put data onto the
            X_batch, y_batch = X_batch.cuda(), y_batch.cuda()

            # create closure for line-search/lbfgs
            def closure(call_backward=True, single_out=single_out):
                optim.zero_grad()
                model_outputs = model(X_batch)
                def inner_closure(model_outputs):
                    loss = loss_func(model_outputs, y_batch)
                    return loss
                loss = inner_closure(model_outputs)
                if call_backward==True:
                    loss.backward()

                if not single_out:
                    return loss, model_outputs, inner_closure
                else:
                    return loss

            if call_closure:
                closure()
            # step optimizer over closure
            optim.step(closure)
            s += 1
            if decay_lr:
                optim = update_lr(optim, torch.tensor(s).float(), torch.tensor(args.stepsize).float())

    # reformat stored data
    parsed_logs = {}
    for key in log_info.keys():
        try:
            parsed_logs[key] = torch.tensor([i[key] for i in logs])
        except:
            pass
    # return info
    return model, parsed_logs

def get_args():
    # grab parse.
    parser = argparse.ArgumentParser(description='PyTorch Soft Actor-Critic Args')
    # optimization args
    parser.add_argument('--algo', type=str, default='SGD', help='SGD,Adam,SGD_FMDOpt')
    parser.add_argument('--episodes', type=int, default=100)
    parser.add_argument('--batch_size', type=int, default=100)
    parser.add_argument('--loss', type=str, default='CrossEntropyLoss')
    parser.add_argument('--project', type=str, default='FunctionalOptimization')
    parser.add_argument('--entity', type=str, default='wilderlavington')
    parser.add_argument('--log_eta', type=float, default=-4)
    parser.add_argument('--m', type=int, default=5)
    parser.add_argument('--init_step_size', type=float, default=1)
    parser.add_argument('--inner_opt', type=str, default='LSOpt')
    parser.add_argument('--c', type=float, default=0.1)
    parser.add_argument('--beta_update', type=float, default=0.9)
    parser.add_argument('--expand_coeff', type=float, default=2.0)
    parser.add_argument('--stoch_reg', type=int, default=1)
    parser.add_argument('--use_optimal_stepsize', type=int, default=1)
    parser.add_argument('--eta_schedule', type=str, default='constant')
    parser.add_argument('--dataset_name', type=str, default='mushrooms')
    parser.add_argument('--file_name', type=str, default='example')
    parser.add_argument('--folder_name', type=str, default='examples/')
    parser.add_argument('--randomize_folder', type=int, default=1)
    parser.add_argument('--seed', type=int, default=0)
    parser.add_argument('--fullbatch', type=int, default=0)
    parser.add_argument('--normalize_epochs_lengths', type=int, default=1)
    parser.add_argument('--min_epochs', type=int, default=100)
    parser.add_argument('--group', type=str, default='main')
    # parse
    args, knk = parser.parse_known_args()
    #
    return args, parser

def main():

    # get arguments
    args, parser = get_args()

    # se
    torch.manual_seed(args.seed)
    np.random.seed(args.seed)

    # get weights
    wandb.init(project=args.project, entity=args.entity, config=args, group=args.group)
    pathlib.Path('logs/'+args.folder_name).mkdir(parents=True, exist_ok=True)

    # set loss functions + models + data + lr
    if args.loss == 'CrossEntropyLoss':
        X, y = load_libsvm(name=args.dataset_name, data_dir='datasets/')
        X, y = torch.tensor(X,device='cpu',dtype=torch.float), torch.tensor(y,device='cpu',dtype=torch.long)
        loss_func = nn.CrossEntropyLoss()
        model = DiscreteLinearModel(X.shape[1], y.max()+1)
        model.to('cuda')
        # L, V  = torch.eig(torch.mm(X.t().cpu(), X.cpu()), eigenvectors=True)
        # L = torch.max(L[:,0]).to('cuda') / 4
        L = torch.norm(torch.mm(X.t().cpu(), X.cpu()), p='fro').to('cuda')  / 4
        args.stepsize = 10**args.log_eta if not args.use_optimal_stepsize else (1/L)

    elif args.loss == 'BCEWithLogitsLoss':
        X, y = load_libsvm(name=args.dataset_name, data_dir='datasets/')
        X, y = torch.tensor(X,device='cpu',dtype=torch.float), torch.tensor(y,device='cpu',dtype=torch.float)
        loss_func_ = nn.BCEWithLogitsLoss()
        loss_func = lambda t, y: loss_func_(t.reshape(-1), y.reshape(-1))
        model = DiscreteLinearModel(X.shape[1], 1)
        model.to('cuda')
        L = torch.norm(torch.mm(X.t().cpu(), X.cpu()), p='fro').to('cuda') / 4
        args.stepsize = 10**args.log_eta if not args.use_optimal_stepsize else (1/L)

    elif args.loss == 'MSELoss':
        X, y = load_libsvm(name=args.dataset_name, data_dir='datasets/')
        X, y = torch.tensor(X,device='cpu',dtype=torch.float), torch.tensor(y,device='cpu',dtype=torch.float)
        y = y.unsqueeze(1)
        loss_func = nn.MSELoss()
        model = ContinuousLinearModel(X.shape[1], 1)
        model.to('cuda')
        L = torch.norm(torch.mm(X.t().cpu(), X.cpu()), p='fro').to('cuda')
        args.stepsize = 10**args.log_eta if not args.use_optimal_stepsize else (1/L)

    # train with an optimizer
    args.batch_size = y.shape[0] if args.fullbatch else args.batch_size

    # to account for batch-size (e.g. make sure we take more steps with bigger batches)
    if args.normalize_epochs_lengths:
        args.m = 1 if args.algo in ['SGD', 'LSOpt', 'Adam', 'Adagrad'] else args.m
        args.epochs = max(int(args.episodes * (1 / args.m) * (args.batch_size / y.shape[0])), args.min_epochs)
    else:
        args.epochs = max(int(args.episodes * (args.batch_size / y.shape[0])), args.min_epochs)
        assert self.eta_schedule != 'exponential'
    args.total_steps = int(args.episodes * (y.shape[0] / args.batch_size) + args.min_epochs * (y.shape[0] / args.batch_size))

    #
    if args.algo == 'SGD':
        print(args.stepsize)
        optim = torch.optim.SGD(model.parameters(), lr=args.stepsize)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=True,
            total_rounds = args.epochs, batch_size=args.batch_size,
            decay_lr = 1 if args.eta_schedule=='stochastic' else 0)

    elif args.algo == 'LSOpt':
        surr_optim_args = {'lr':args.init_step_size, 'c':args.c, 'n_batches_per_epoch': y.shape[0] / args.batch_size,
            'beta_update':args.beta_update, 'expand_coeff':args.expand_coeff, 'eta_schedule':args.eta_schedule,
            'total_steps':args.total_steps}
        optim = LSOpt(model.parameters(), **surr_optim_args)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=False,
            total_rounds=args.epochs, batch_size=args.batch_size, single_out=True)

    elif args.algo == 'Sadagrad':
        args.stepsize = 10**args.log_eta if not args.use_optimal_stepsize else  1e-2
        optim = Sadagrad(model.parameters(), lr=args.stepsize)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=True,
            total_rounds = args.epochs, batch_size=args.batch_size,
            decay_lr = 0)

    elif args.algo == 'SGD_FMDOpt':
        #
        div_measure = lambda f, ft: torch.norm(f-ft,2).pow(2)
        L = torch.norm(torch.mm(X.t().cpu(), X.cpu()), p='fro').to('cuda')
        args.stepsize = 10**args.log_eta if not args.use_optimal_stepsize else args.stepsize * L
        if args.inner_opt =='LSOpt':
            surr_optim_args = {'lr':args.init_step_size, 'c':args.c, 'n_batches_per_epoch': y.shape[0] / args.batch_size,
                'beta_update':args.beta_update, 'expand_coeff':args.expand_coeff, 'eta_schedule':'constant'}
        else:
            surr_optim_args = {'lr':args.init_step_size}
        optim = SGD_FMDOpt(model.parameters(), inv_eta=args.stepsize, div_op=div_measure,
                eta_schedule=args.eta_schedule, inner_optim=eval(args.inner_opt),  stoch_reg=args.stoch_reg,
                surr_optim_args=surr_optim_args, m=args.m, total_steps=args.total_steps)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=False,
            total_rounds = args.epochs, batch_size = args.batch_size)

    elif args.algo == 'Ada_FMDOpt':
        assert args.eta_schedule=='constant'
        #
        div_measure = lambda f, ft: torch.norm(f-ft,2).pow(2)
        args.stepsize = 10**args.log_eta if not args.use_optimal_stepsize else 1e2
        if args.inner_opt =='LSOpt':
            surr_optim_args = {'lr':args.init_step_size, 'c':args.c, 'n_batches_per_epoch': y.shape[0] / args.batch_size,
                'beta_update':args.beta_update, 'expand_coeff':args.expand_coeff, 'eta_schedule':'constant'}
        else:
            surr_optim_args = {'lr':args.init_step_size}
        optim = Ada_FMDOpt(model.parameters(), inv_eta=args.stepsize, div_op=div_measure,
                eta_schedule=args.eta_schedule, inner_optim=eval(args.inner_opt),  stoch_reg=args.stoch_reg,
                surr_optim_args=surr_optim_args, m=args.m, total_steps=args.total_steps)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=False,
            total_rounds = args.epochs, batch_size = args.batch_size)

    elif args.algo == 'Adam':
        assert args.eta_schedule == 'constant'
        args.stepsize = 10**args.log_eta if not args.use_optimal_stepsize else  1e-2
        optim = torch.optim.Adam(model.parameters(), lr=args.stepsize)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=True,
            total_rounds = args.epochs, batch_size=args.batch_size )

    elif args.algo == 'Adagrad':
        assert args.eta_schedule == 'constant'
        args.stepsize = 10**args.log_eta if not args.use_optimal_stepsize else 1e-3
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
