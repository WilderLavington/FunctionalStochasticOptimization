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

def download_wandb_summary():
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

def download_wandb_records():
    """
    Download data for all runs in summary file
    """
    # load it all in and clean it up
    runs_df = pd.read_csv(SUMMARY_FILE+'.csv', header=0, squeeze=True)
    runs_df = runs_df.loc[:,~runs_df.columns.duplicated()]
    list_of_dataframes = []
    # make thhe directory if it does not exist
    Path('../logs/wandb_data').mkdir(parents=True, exist_ok=True)
    # set which columns we will store for vizualization
    columns_of_interest = []
    # iterate through all runs to create individual databases
    for ex in tqdm(range(len(filtered_df)), leave=False):
        # get the associated runs
        run = api.run(USER+'/'+PROJECT+'/'+runs_df.loc[filtered_df.iloc[ex,0],:]['id'])
        run_df = []
        # iterate through all rows in online database
        for i, row in run.history().iterrows():
            row_info = {key:row[key] for key in columns_of_interest}
            row_info.update({'id':runs_df.loc[filtered_df.iloc[ex,0],:]['id']})
            run_df.append(row_info)
        # convert format to dataframe and add to our list
        list_of_dataframes.append(pd.DataFrame(run_df))
    # combine and then store
    wandb_records = pd.concat(list_of_dataframes)
    wandb_records.to_csv(PROJECT)
    # return single data frame for vizualization
    return wandb_records

def plot(fig_name='example',x='optim_steps', y='avg_loss',
            x_max=1000, m=1, loss='MSELoss', download_data=True):

    # =================================================
    # load data in
    if download_data:
        download_wandb_summary()
        download_wandb_records()

    # =================================================
    #
    if x == 'function_evals+grad_evals':
        # =================================================
        #
        fig, ax = plt.subplots()
        low_order_idx = (2 * adam_data['optim_steps'] < max_steps).nonzero().reshape(-1)
        ax.plot(sgd_data['optim_steps'][low_order_idx], sgd_data[y][low_order_idx], label='SGD')
        ax.plot(adam_data['optim_steps'][low_order_idx], adam_data[y][low_order_idx], label='Adam')
        ax.plot(adagrad_data['optim_steps'][low_order_idx], adagrad_data[y][low_order_idx], label='Adagrad')
        ax.plot(SGD_FMDOpt1_data[x][(SGD_FMDOpt1_data['function_evals'] + SGD_FMDOpt1_data['grad_evals'] < max_steps).nonzero().reshape(-1)],
                    SGD_FMDOpt1_data[y][(SGD_FMDOpt1_data['function_evals'] + SGD_FMDOpt1_data['grad_evals'] < max_steps).nonzero().reshape(-1)], label='SGD_FMDOpt(m=1)')
        ax.plot(SGD_FMDOpt2_data[x][(SGD_FMDOpt2_data['function_evals'] + SGD_FMDOpt2_data['grad_evals'] < max_steps).nonzero().reshape(-1)],
                    SGD_FMDOpt2_data[y][(SGD_FMDOpt2_data['function_evals'] + SGD_FMDOpt2_data['grad_evals'] < max_steps).nonzero().reshape(-1)], label='SGD_FMDOpt(m=2)')
        ax.plot(SGD_FMDOpt3_data[x][(SGD_FMDOpt3_data['function_evals'] + SGD_FMDOpt3_data['grad_evals'] < max_steps).nonzero().reshape(-1)],
                    SGD_FMDOpt3_data[y][(SGD_FMDOpt3_data['function_evals'] + SGD_FMDOpt3_data['grad_evals'] < max_steps).nonzero().reshape(-1)], label='SGD_FMDOpt(m=3)')
        ax.grid()
        plt.legend()
        plt.rcParams['figure.dpi'] = 400
        plt.xlabel(x)
        plt.ylabel(y)
        plt.title('Optimizer-Comparison: ' )
        # plt.show()
        plt.savefig(fig_name, bbox_inches='tight')

    else:
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
        plt.title('Optimizer-Comparison: ' )
        # plt.show()
        plt.savefig(fig_name, bbox_inches='tight')



def func_plot(fig_name='example',x='optim_steps',
        y='avg_loss',max_steps=1000,m=1,loss='MSELoss'):

    # =================================================
    #
    sgd_data = torch.load('logs/'+fig_name+'SGD.pt')
    adam_data = torch.load('logs/'+fig_name+'Adam.pt')
    adagrad_data = torch.load('logs/'+fig_name+'Adagrad.pt')
    SGD_FMDOpt1_data = torch.load('logs/'+fig_name+'/SGD_FMDOpt1.pt')
    SGD_FMDOpt2_data = torch.load('logs/'+fig_name+'/SGD_FMDOpt2.pt')
    SGD_FMDOpt3_data = torch.load('logs/'+fig_name+'/SGD_FMDOpt3.pt')
    SGD_FMDOpt4_data = torch.load('logs/'+fig_name+'/SGD_FMDOpt4.pt')
    SGD_FMDOpt5_data = torch.load('logs/'+fig_name+'/SGD_FMDOpt5.pt')
    # =================================================
    #
    fig, ax = plt.subplots()
    low_order_idx = (adam_data['optim_steps'] < max_steps).nonzero().reshape(-1)
    ax.plot(SGD_FMDOpt1_data[x][(SGD_FMDOpt1_data[x] < max_steps).nonzero().reshape(-1)],
                SGD_FMDOpt1_data[y][(SGD_FMDOpt1_data[x] < max_steps).nonzero().reshape(-1)], label='SGD_FMDOpt(m=1)')
    ax.plot(SGD_FMDOpt2_data[x][(SGD_FMDOpt2_data[x] < max_steps).nonzero().reshape(-1)],
                SGD_FMDOpt2_data[y][(SGD_FMDOpt2_data[x] < max_steps).nonzero().reshape(-1)], label='SGD_FMDOpt(m=2)')
    ax.plot(SGD_FMDOpt3_data[x][(SGD_FMDOpt3_data[x] < max_steps).nonzero().reshape(-1)],
                SGD_FMDOpt3_data[y][(SGD_FMDOpt3_data[x] < max_steps).nonzero().reshape(-1)], label='SGD_FMDOpt(m=3)')
    ax.plot(SGD_FMDOpt4_data[x][(SGD_FMDOpt4_data[x] < max_steps).nonzero().reshape(-1)],
                SGD_FMDOpt4_data[y][(SGD_FMDOpt4_data[x] < max_steps).nonzero().reshape(-1)], label='SGD_FMDOpt(m=4)')
    ax.plot(SGD_FMDOpt5_data[x][(SGD_FMDOpt5_data[x] < max_steps).nonzero().reshape(-1)],
                SGD_FMDOpt5_data[y][(SGD_FMDOpt5_data[x] < max_steps).nonzero().reshape(-1)], label='SGD_FMDOpt(m=5)')

    ax.grid()
    plt.legend()
    plt.rcParams['figure.dpi'] = 400
    plt.xlabel(x)
    plt.ylabel(y)
    plt.title('Optimizer-Comparison: ' )
    # plt.show()
    plt.savefig('plots/'+fig_name+'.pdf', bbox_inches='tight')

def get_args():
    # grab parse.
    parser = argparse.ArgumentParser(description='PyTorch Soft Actor-Critic Args')
    # optimization args
    parser.add_argument('--x', type=str, default='optim_steps', help='SGD,Adam,SGD_FMDOpt')
    parser.add_argument('--y', type=str, default='avg_loss')
    parser.add_argument('--loss', type=str, default='MSELoss')
    parser.add_argument('--fig_name', type=str, default='example')
    parser.add_argument('--max_steps', type=int, default=100)
    parser.add_argument('--func_plot', type=int, default=1)
    args, knk = parser.parse_known_args()
    #
    return args, parser

def main():

    # get arguments
    args, parser = get_args()
    if args.func_plot:
        func_plot(fig_name=args.fig_name, x=args.x, y=args.y,
             max_steps=args.max_steps, loss=args.loss)
    else:
        plot(fig_name=args.fig_name, x=args.x, y=args.y,
             max_steps=args.max_steps, loss=args.loss)

if __name__ == "__main__":
    main()
