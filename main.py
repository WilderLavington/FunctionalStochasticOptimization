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
# get local info
from models import DiscreteLinearModel, ContinuousLinearModel
from load_data import create_mushroom_data
from fmdopt import FMDOpt
from sgd_fmdopt import SGD_FMDOpt
from lsopt import LSOpt
from helpers import get_grad_norm
def train_model(model, optim, loss_func, X, y, call_closure=False, total_rounds = 1000, batch_size=100, log_rate=1):
    # log stuff
    dataset = torch.utils.data.TensorDataset(X, y)
    data_generator = torch.utils.data.DataLoader(dataset, batch_size=batch_size, shuffle=True)
    logs, s, starting_time = [], 0,  time()
    import_vals = ['inner_steps', 'loss', 'function_evals', 'grad_evals', 'step_time', 'inner_step_size']
    # iterate over epochs
    for t in tqdm(range(total_rounds)):
        # step through data by sampling without replacement
        for X_batch, y_batch in tqdm(data_generator,leave=False):
            # create closure for line-search/lbfgs
            def closure(call_backward=True):
                optim.zero_grad()
                model_outputs = model(X_batch)
                loss = loss_func(model_outputs, y_batch)
                if call_backward==True:
                    loss.backward()
                return loss, model_outputs, y_batch
            if call_closure:
                closure()
            # step optimizer over closure
            optim.step(closure)
            s += 1
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
            wandb.log(log_info)
            logs.append(log_info)
    # reformat stored data
    parsed_logs = {}
    for key in log_info.keys():
        if key in ['step_time']:
            continue
        parsed_logs[key] = torch.tensor([i[key] for i in logs])
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
    # parse
    args, knk = parser.parse_known_args()
    #
    return args, parser

def main():

    # get arguments
    args, parser = get_args()

    # get weights
    wandb.init(project=args.project, entity=args.entity, config=args)

    # set loss functions + models + data
    if args.loss == 'CrossEntropyLoss':
        X, y = create_mushroom_data()
        X, y = torch.tensor(X,device='cuda',dtype=torch.float), torch.tensor(y,device='cuda',dtype=torch.long)
        loss_func = nn.CrossEntropyLoss()
        model = DiscreteLinearModel(X.shape[1], y.max()+1)
        model.to('cuda')
    elif args.loss == 'MSELoss':
        X, y = create_mushroom_data()
        X, y = torch.tensor(X,device='cuda',dtype=torch.float), torch.tensor(y,device='cuda',dtype=torch.float)
        y = y.unsqueeze(1)
        loss_func = nn.MSELoss()
        model = ContinuousLinearModel(X.shape[1], 1)
        model.to('cuda')
    # train with an optimizer
    if args.algo == 'SGD':
        optim = torch.optim.SGD(model.parameters(), lr=10**args.log_eta)
        model, logs = train_model(model, optim, loss_func, X, y, call_closure=True,
            total_rounds = args.episodes, batch_size=args.batch_size )
    elif args.algo == 'SGD_FMDOpt':
        div_measure = lambda f, ft: torch.norm(f-ft,2).pow(2)
        surr_optim_args = {'init_step_size':args.init_step_size, 'c':args.c,
                'beta_update':args.beta_update, 'expand_coeff':args.expand_coeff}
        optim = SGD_FMDOpt(model.parameters(), eta=10**args.log_eta, div_op=div_measure,
                       inner_optim=LSOpt, surr_optim_args=surr_optim_args, m=args.m)
        model, logs = train_model(model, optim, loss_func, X, y, call_closure=False,
            total_rounds = args.episodes, batch_size=args.batch_size )
    elif args.algo == 'Adam':
        optim = torch.optim.Adam(model.parameters(), lr=10**args.log_eta)
        model, logs = train_model(model, optim, loss_func, X, y, call_closure=True,
            total_rounds = args.episodes, batch_size=args.batch_size )
    elif args.algo == 'Adagrad':
        optim = torch.optim.Adagrad(model.parameters(), lr=10**args.log_eta)
        model, logs = train_model(model, optim, loss_func, X, y, call_closure=True,
            total_rounds = args.episodes, batch_size=args.batch_size )
    #
    logs = torch.save(logs, 'logs/'+args.algo+'_'+args.loss+'_'+str(args.m)+'.pt')
    #
    return

if __name__ == "__main__":
    main()
