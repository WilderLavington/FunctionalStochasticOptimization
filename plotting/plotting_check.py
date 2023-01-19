
from tqdm import tqdm
import wandb
api = wandb.Api(timeout=180)
import os
import pandas as pd
import wandb
import yaml
from pathlib import Path
from copy import deepcopy
import torch
import matplotlib.pyplot as plt
import numpy as np
import argparse
import itertools
import matplotlib.patches as mpatches
import itertools
import time

from plotting_utils import *



def plot(fig_name='example',x='optim_steps', y='avg_loss',
            x_max=10000, m=[1,2,10,20], loss='MSELoss', download_data=True,
            dataset_name='mushrooms', batch_size=100,
            episodes=100,  func_only=True, eta_schedule='stochastic',
            use_optimal_stepsize=0, alter_baselines=0,
            vizualize=True, save=False):
    # =================================================
    # download data in
    if download_data:
        download_wandb_summary()
        wandb_records = download_wandb_records()
    else:
        wandb_records = pd.read_csv('logs/wandb_data/__full__'+SUMMARY_FILE, header=0, squeeze=True)
    # =================================================
    # create datasets
    sgd_data, best_sgd = format_dataframe(wandb_records,
        id_subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': use_optimal_stepsize, 'loss': loss, 'algo': 'SGD',
        'eta_schedule': 'stochastic', 'dataset_name': dataset_name},
        x_col=x , y_col=y)
    adam_data, best_adam = format_dataframe(wandb_records,
        id_subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': use_optimal_stepsize, 'loss': loss, 'algo': 'Adam',
        'eta_schedule': 'constant', 'dataset_name': dataset_name},
        x_col=x , y_col=y)
    adagrad_data, best_adagrad = format_dataframe(wandb_records,
        id_subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': use_optimal_stepsize, 'loss': loss, 'algo': 'Adagrad',
        'eta_schedule': 'constant', 'dataset_name': dataset_name},
        x_col=x , y_col=y)
    sls_data, best_sls = format_dataframe(wandb_records,
        id_subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': 1, 'loss': loss, 'algo': 'LSOpt',
        'eta_schedule': 'constant', 'dataset_name': dataset_name},
        x_col=x , y_col=y)
    funcopt_dataset = []
    for m_ in m:
        funcopt_dataset.append(format_dataframe(wandb_records,
        id_subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': use_optimal_stepsize,
        'loss': loss, 'algo': 'SGD_FMDOpt', 'm': m_,
        'eta_schedule': eta_schedule, 'dataset_name': dataset_name},
        x_col=x , y_col=y))

    # =================================================
    # generate general plots (SGD)
    fig, ax = plt.subplots()
    if not func_only:
        low_order_idx = (torch.tensor(sgd_data[x].values) < x_max).nonzero().reshape(-1)
        ax.plot(torch.tensor(sgd_data[x].values[low_order_idx]), torch.tensor(sgd_data[y].values[low_order_idx]), label='SGD')
        ax.fill_between(torch.tensor(sgd_data[x].values)[low_order_idx],
            torch.tensor(sgd_data[y+'75'].values)[low_order_idx],
            torch.tensor(sgd_data[y+'25'].values)[low_order_idx],
            alpha = 0.5, label='_nolegend_')
        low_order_idx = (torch.tensor(sls_data[x].values) < x_max).nonzero().reshape(-1)
        ax.plot(torch.tensor(sls_data[x].values[low_order_idx]), torch.tensor(sls_data[y].values[low_order_idx]), label='SLS')
        ax.fill_between(torch.tensor(sls_data[x].values)[low_order_idx],
            torch.tensor(sls_data[y+'75'].values)[low_order_idx],
            torch.tensor(sls_data[y+'25'].values)[low_order_idx],
            alpha = 0.5, label='_nolegend_')
    # adam / adagrad plots
    if alter_baselines:
        low_order_idx = (torch.tensor(adam_data[x].values) < x_max).nonzero().reshape(-1)
        ax.plot(torch.tensor(adam_data[x].values[low_order_idx]), torch.tensor(adam_data[y].values[low_order_idx]), label='Adam')
        ax.fill_between(torch.tensor(adam_data[x].values)[low_order_idx],
            torch.tensor(adam_data[y+'75'].values)[low_order_idx],
            torch.tensor(adam_data[y+'25'].values)[low_order_idx],
            alpha = 0.5, label='_nolegend_')
    # func-opt plots
    for m_, funcopt_data in enumerate(funcopt_dataset):
        if funcopt_data is not None:
            high_order_idx = (torch.tensor(funcopt_data[0][x].values) < x_max).nonzero().reshape(-1)
            ax.plot(torch.tensor(funcopt_data[0][x].values)[high_order_idx], torch.tensor(funcopt_data[0][y].values)[high_order_idx], label='SGD_FMDOpt(m='+str(m[m_]))
            ax.fill_between(torch.tensor(funcopt_data[0][x].values)[high_order_idx],
                torch.tensor(funcopt_data[0][y+'75'].values)[high_order_idx],
                torch.tensor(funcopt_data[0][y+'25'].values)[high_order_idx],
                alpha = 0.5, label='_nolegend_')
    ax.grid()
    plt.legend()
    plt.yscale("log")
    plt.rcParams['figure.dpi'] = 400
    plt.xlabel(x)
    plt.ylabel(y)
    plt.title('Optimizer-Comparison: ' )

    # do we want to save
    if save:
        plt.savefig(fig_name+'.pdf', bbox_inches='tight')

    # show atm (so we dont need to find it )
    if vizualize:
        plt.show()


def get_args():
    # grab parse.
    parser = argparse.ArgumentParser(description='PyTorch Soft Actor-Critic Args')
    # optimization args
    parser.add_argument('--x', type=str, default='optim_steps', help='SGD,Adam,SGD_FMDOpt')
    parser.add_argument('--y', type=str, default='avg_loss')
    parser.add_argument('--loss', type=str, default='MSELoss')
    parser.add_argument('--fig_name', type=str, default='example')
    parser.add_argument('--dataset_name', type=str, default='mushrooms')
    parser.add_argument('--max_steps', type=int, default=100000)
    parser.add_argument('--batch_size', type=int, default=100)
    parser.add_argument('--download_data', type=int, default=1)
    parser.add_argument('--func_only', type=int, default=1)
    parser.add_argument('--eta_schedule', type=str, default='constant')
    parser.add_argument('--alter_baselines', type=int, default=0)
    parser.add_argument('--use_optimal_stepsize', type=int, default=0)
    parser.add_argument('--create_sensetivity_table', type=int, default=0)
    parser.add_argument('--performance_plot', type=int, default=1)
    args, knk = parser.parse_known_args()
    #
    return args, parser

def main():

    # get arguments
    args, parser = get_args()

    # general plot
    if args.performance_plot:
        plot(fig_name=args.fig_name, x=args.x, y=args.y, func_only=args.func_only,
         x_max=args.max_steps, loss=args.loss, download_data=args.download_data,
         dataset_name=args.dataset_name, batch_size = args.batch_size,
         use_optimal_stepsize=args.use_optimal_stepsize,
         alter_baselines=args.alter_baselines, eta_schedule=args.eta_schedule)


if __name__ == "__main__":
    main()
