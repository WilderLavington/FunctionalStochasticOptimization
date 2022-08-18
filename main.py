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
from fmdopt import FMDOpt
from sgd_fmdopt import SGD_FMDOpt
from ada_fmdopt import Ada_FMDOpt
from lsopt import LSOpt
from helpers import get_grad_norm, get_random_string


def train_model(args, model, optim, loss_func, X, y, decay_lr=False,
            call_closure=False, total_rounds = 1000, batch_size=100, log_rate=1):
    # log stuff
    dataset = torch.utils.data.TensorDataset(X, y)
    data_generator = torch.utils.data.DataLoader(dataset, batch_size=batch_size, shuffle=True)
    logs, s, starting_time = [], 0,  time()
    import_vals = ['inner_steps', 'loss', 'function_evals', 'grad_evals',
            'step_time', 'inner_step_size', 'inner_backtracks']
    # iterate over epochs
    for t in tqdm(range(total_rounds)):
        # step through data by sampling without replacement
        for X_batch, y_batch in tqdm(data_generator,leave=False):
            # create closure for line-search/lbfgs
            def closure(call_backward=True):
                optim.zero_grad()
                model_outputs = model(X_batch)
                all_model_outputs = model(X)
                loss = loss_func(model_outputs, y_batch)
                if call_backward==True:
                    loss.backward()
                return loss, model_outputs, all_model_outputs
            if call_closure:
                closure()
            # step optimizer over closure
            optim.step(closure)
            s += 1
            if decay_lr:
                optim = update_lr(optim, s, 10**args.log_eta)

        # log everything
        if t % log_rate == 0:
            avg_loss = closure(call_backward=True)[0].detach().cpu().numpy()*0
            grad_norm = get_grad_norm(model.parameters()).detach().cpu().numpy()*0
            for X_batch, y_batch in data_generator:
                avg_loss += loss_func(model(X_batch), y_batch).detach().cpu().numpy()
                grad_norm += get_grad_norm(model.parameters()).detach().cpu().numpy()
            log_info = {'avg_loss': avg_loss,
                        'optim_steps': s,
                        'grad_norm': grad_norm,
                        'time-elapsed':  time() - starting_time}
            log_info.update({key:optim.state[key] for key in optim.state.keys() if key in import_vals})
            try:
                wandb.log(log_info)
            except:
                print(log_info)
                raise Exception
            logs.append(log_info)
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
    parser.add_argument('--c', type=float, default=0.1)
    parser.add_argument('--beta_update', type=float, default=0.9)
    parser.add_argument('--expand_coeff', type=float, default=1.8)
    parser.add_argument('--stoch_reg', type=int, default=1)
    parser.add_argument('--use_optimal_stepsize', type=int, default=1)
    parser.add_argument('--eta_schedule', type=str, default='constant')
    parser.add_argument('--dataset_name', type=str, default='mushrooms')
    parser.add_argument('--file_name', type=str, default='example')
    parser.add_argument('--folder_name', type=str, default='examples/')
    parser.add_argument('--randomize_folder', type=int, default=0)
    # parse
    args, knk = parser.parse_known_args()
    #
    return args, parser

def main():

    # get arguments
    args, parser = get_args()

    # get weights
    wandb.init(project=args.project, entity=args.entity, config=args)
    pathlib.Path('logs/'+args.folder_name).mkdir(parents=True, exist_ok=True)

    # set loss functions + models + data + lr
    if args.loss == 'CrossEntropyLoss':
        X, y = load_libsvm(name=args.dataset_name, data_dir='datasets/')
        X, y = torch.tensor(X,device='cuda',dtype=torch.float), torch.tensor(y,device='cuda',dtype=torch.long)
        loss_func = nn.CrossEntropyLoss()
        model = DiscreteLinearModel(X.shape[1], y.max()+1)
        model.to('cuda')
        L, V  = torch.eig(torch.mm(X.t().cpu().double(), X.cpu().double()), eigenvectors=True)
        L = torch.max(L[:,0]).to('cuda')
        stepsize = 10**args.log_eta if not args.use_optimal_stepsize else (1/L)
    elif args.loss == 'MSELoss':
        X, y = load_libsvm(name=args.dataset_name, data_dir='datasets/')
        X, y = torch.tensor(X,device='cuda',dtype=torch.float), torch.tensor(y,device='cuda',dtype=torch.float)
        y = y.unsqueeze(1)
        loss_func = nn.MSELoss()
        model = ContinuousLinearModel(X.shape[1], 1)
        model.to('cuda')
        L, V  = torch.eig(torch.mm(X.t().cpu().double(), X.cpu().double()), eigenvectors=True)
        L = torch.max(L[:,0]).to('cuda')
        stepsize = 10**args.log_eta if not args.use_optimal_stepsize else (1/L)

    # train with an optimizer
    if args.algo == 'SGD':
        optim = torch.optim.SGD(model.parameters(), lr=stepsize)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=True,
            total_rounds = args.episodes, batch_size=args.batch_size )
    elif args.algo == 'SGD_FMDOpt':
        div_measure = lambda f, ft: torch.norm(f-ft,2).pow(2)
        surr_optim_args = {'init_step_size':args.init_step_size, 'c':args.c,
                'beta_update':args.beta_update, 'expand_coeff':args.expand_coeff}
        optim = SGD_FMDOpt(model.parameters(), eta=stepsize, div_op=div_measure,
                eta_schedule=args.eta_schedule, inner_optim=LSOpt,  stoch_reg=args.stoch_reg,
                surr_optim_args=surr_optim_args, m=args.m, total_steps=args.episodes)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=False,
            total_rounds = args.episodes, batch_size=args.batch_size )
    elif args.algo == 'Ada_FMDOpt':
        assert args.eta_schedule == 'constant'
        div_measure = lambda f, ft: torch.norm(f-ft,2).pow(2)
        surr_optim_args = {'init_step_size':args.init_step_size, 'c':args.c,
                'beta_update':args.beta_update, 'expand_coeff':args.expand_coeff}
        optim = Ada_FMDOpt(model.parameters(), eta=stepsize, div_op=div_measure, stoch_reg=args.stoch_reg,
                inner_optim=LSOpt, surr_optim_args=surr_optim_args, m=args.m, total_steps=args.episodes)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=False,
            total_rounds = args.episodes, batch_size=args.batch_size )
    elif args.algo == 'Adam':
        assert args.eta_schedule == 'constant'
        optim = torch.optim.Adam(model.parameters(), lr=stepsize)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=True,
            total_rounds = args.episodes, batch_size=args.batch_size )
    elif args.algo == 'Adagrad':
        assert args.eta_schedule == 'constant'
        optim = torch.optim.Adagrad(model.parameters(), lr=stepsize)
        model, logs = train_model(args, model, optim, loss_func, X, y, call_closure=True,
            total_rounds = args.episodes, batch_size=args.batch_size )

    # store logs
    if args.randomize_folder:
        logs = torch.save(logs, 'logs/'+get_random_string(16)+'/'+args.file_name+'.pt')
        logs = torch.save(args, 'logs/'+get_random_string(16)+'/'+args.folder_name+'args.pt')
    else:
        logs = torch.save(logs, 'logs/'+args.folder_name+args.file_name+'.pt')
        logs = torch.save(args, 'logs/'+args.folder_name+'args.pt')
    #
    return

if __name__ == "__main__":
    main()
