from tqdm import tqdm
from tqdm.notebook import tqdm
import wandb
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

def load_csv():
    return pd.read_csv(SUMMARY_FILE+'.csv', header=0, squeeze=True)

def download_all_runs_summary():
    """
    Download a summary of all runs on the wandb project
    """
    runs = api.runs(USER+'/'+PROJECT, per_page=100000)
    summary_list = []
    config_list = []
    name_list = []
    id_list = []
    assert len([run for run in runs])
    for run in tqdm(runs):
        summary_list.append(run.summary._json_dict)
        run = api.run(USER+'/'+PROJECT+"/"+run.id)
        config_list.append({k: v for k, v in run.config.items()})
        name_list.append(run.name)
        id_list.append(run.id)
    summary_df = pd.DataFrame.from_records(summary_list)
    config_df = pd.DataFrame.from_records(config_list)
    name_df = pd.DataFrame({"name": name_list, "id": id_list})
    all_df = pd.concat([name_df, config_df, summary_df], axis=1)
    all_df.to_csv(SUMMARY_FILE)

def plot(fig_name='example.png',x='optim_steps',
        y='avg_loss',max_steps=1000,m=1,loss='MSELoss'):
    # =================================================
    #
    sgd_data = torch.load('logs/SGD'+'_'+loss+'_'+str(5)+'.pt')
    adam_data = torch.load('logs/Adam'+'_'+loss+'_'+str(5)+'.pt')
    adagrad_data = torch.load('logs/Adagrad'+'_'+loss+'_'+str(5)+'.pt')
    SGD_FMDOpt1_data = torch.load('logs/SGD_FMDOpt'+'_'+loss+'_'+str(1)+'.pt')
    SGD_FMDOpt2_data = torch.load('logs/SGD_FMDOpt'+'_'+loss+'_'+str(2)+'.pt')
    SGD_FMDOpt3_data = torch.load('logs/SGD_FMDOpt'+'_'+loss+'_'+str(3)+'.pt')
    # =================================================
    #
    fig, ax = plt.subplots()
    low_order_idx = (adam_data['optim_steps'] < max_steps).nonzero().reshape(-1)
    ax.plot(sgd_data['optim_steps'][low_order_idx], sgd_data[y][low_order_idx], label='SGD')
    ax.plot(adam_data['optim_steps'][low_order_idx], adam_data[y][low_order_idx], label='Adam')
    ax.plot(adagrad_data['optim_steps'][low_order_idx], adagrad_data[y][low_order_idx], label='Adagrad')
    ax.plot(SGD_FMDOpt1_data[x][(SGD_FMDOpt1_data[x] < max_steps).nonzero().reshape(-1)],
                SGD_FMDOpt1_data[y][(SGD_FMDOpt1_data[x] < max_steps).nonzero().reshape(-1)], label='SGD_FMDOpt(m=1)')
    ax.plot(SGD_FMDOpt2_data[x][(SGD_FMDOpt2_data[x] < max_steps).nonzero().reshape(-1)],
                SGD_FMDOpt2_data[y][(SGD_FMDOpt2_data[x] < max_steps).nonzero().reshape(-1)], label='SGD_FMDOpt(m=2)')
    ax.plot(SGD_FMDOpt3_data[x][(SGD_FMDOpt3_data[x] < max_steps).nonzero().reshape(-1)],
                SGD_FMDOpt3_data[y][(SGD_FMDOpt3_data[x] < max_steps).nonzero().reshape(-1)], label='SGD_FMDOpt(m=3)')
    ax.grid()
    plt.legend()
    plt.rcParams['figure.dpi'] = 400
    plt.xlabel(x)
    plt.ylabel(y)
    plt.title('Functional Decent Comparison: m='+str(m))
    # plt.show()
    plt.savefig(fig_name, bbox_inches='tight')

def get_args():
    # grab parse.
    parser = argparse.ArgumentParser(description='PyTorch Soft Actor-Critic Args')
    # optimization args
    parser.add_argument('--x', type=str, default='optim_steps', help='SGD,Adam,SGD_FMDOpt')
    parser.add_argument('--y', type=str, default='avg_loss')
    parser.add_argument('--loss', type=str, default='MSELoss')
    parser.add_argument('--fig_name', type=str, default='example.png')
    parser.add_argument('--max_steps', type=int, default=100)
    args, knk = parser.parse_known_args()
    #
    return args, parser

def main():

    # get arguments
    args, parser = get_args()
    plot(fig_name=args.fig_name, x=args.x, y=args.y,
         max_steps=args.max_steps, loss=args.loss)


if __name__ == "__main__":
    main()
