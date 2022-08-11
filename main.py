import torch
import numpy as np
import matplotlib.pyplot as plt
from copy import deepcopy
torch.manual_seed(1)
from tqdm import tqdm
import wandb
import torch.nn as nn
# get local info
from models import DiscreteLinearModel, ContinuousLinearModel
from load_data import create_mushroom_data
from fmdopt import FMDOpt
from lsopt import LSOpt

def train_model(model, optim, loss_func, X, y, total_rounds = 1000, batch_size=100, m=1, log_rate=1):
    # log stuff
    X, y = torch.tensor(X,device='cuda',dtype=torch.float), torch.tensor(y,device='cuda',dtype=torch.long)
    dataset = torch.utils.data.TensorDataset(X, y)
    data_generator = torch.utils.data.DataLoader(dataset, batch_size=batch_size, shuffle=True)
    model.to('cuda')
    # iterate over epochs
    for t in tqdm(range(total_rounds)):
        # step through data by sampling without replacement
        for X_batch, y_batch in tqdm(data_generator,leave=False):
            # create closure for line-search/lbfgs
            def closure(call_backward=True):
                # zero out the gradient
                optim.zero_grad()
                #
                model_outputs = model(X_batch)
                loss = loss_func(model_outputs, y_batch)
                if call_backward==True:
                    loss.backward()
                return loss, model_outputs, y_batch
            # step optimizer over closure
            loss = optim.step(closure)
        # log everything
        if t % log_rate == 0:
            avg_loss = loss.detach().cpu()*0
            for X_batch, y_batch in data_generator:
                avg_loss += loss_func(model(X_batch), y_batch).detach().cpu()
            log_info = {'avg_loss': avg_loss}
            log_info.update(optim.state)
            wandb.log(log_info)
            print(t, avg_loss)
    # return info
    return model

def main():
    #
    wandb.init(project='tests', entity='wilderlavington')
    # logistic tests
    X, y = create_mushroom_data()
    loss_func = nn.CrossEntropyLoss()
    div_measure = lambda f, ft: torch.norm(f-ft,2).pow(2)
    model = DiscreteLinearModel(X.shape[1], y.max()+1)
    # outer optim args
    eta_optim_args = {'lr':1e-4}
    surr_optim_args = {'init_step_size':1, 'c':0.1,'beta_update':0.9,
                        'expand_coeff':1.8,}
    # test 0
    # optim = torch.optim.SGD(model.parameters(), lr=1e-4)
    # train_model(model, optim, loss_func, X, y, total_rounds = 1000, batch_size=1, m=1)

    # test 1
    optim = FMDOpt(model.parameters(), eta_optim=torch.optim.SGD,
                    div_op=div_measure, inner_optim=LSOpt,
                    eta_optim_args=eta_optim_args, surr_optim_args=surr_optim_args)
    train_model(model, optim, loss_func, X, y, total_rounds = 1000, batch_size=1, m=1)
    #
    return

if __name__ == "__main__":
    main()
