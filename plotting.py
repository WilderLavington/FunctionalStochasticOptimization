
from tqdm import tqdm
import wandb
api = wandb.Api()
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

USER='wilderlavington'
PROJECT='FunctionalStochasticOptimization'
SUMMARY_FILE='sharan_report_0816.csv'

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
    Path('logs/wandb_data/').mkdir(parents=True, exist_ok=True)
    all_df.to_csv('logs/wandb_data/'+SUMMARY_FILE)

def download_wandb_records():
    """
    Download data for all runs in summary file
    """
    # load it all in and clean it up
    runs_df = pd.read_csv('logs/wandb_data/'+SUMMARY_FILE, header=0, squeeze=True)
    runs_df = runs_df.loc[:,~runs_df.columns.duplicated()]
    columns_of_interest = ['avg_loss', 'optim_steps', 'grad_norm', 'time-elapsed', \
            'inner_step_size', 'grad_evals', 'inner_steps', 'function_evals', \
            'inner_backtracks', 'optim_steps']
    # set which columns we will store for vizualization
    list_of_dataframes = []
    # iterate through all runs to create individual databases
    for ex in tqdm(range(len(runs_df)), leave=False):
        # get the associated runs
        run = api.run(USER+'/'+PROJECT+'/'+runs_df.loc[runs_df.iloc[ex,0],:]['id'])
        run_df = []
        # iterate through all rows in online database
        for i, row in run.history().iterrows():
            row_info = {}
            for key in runs_df.loc[runs_df.iloc[ex,0],:].keys():
                row_info.update({key:runs_df.loc[runs_df.iloc[ex,0],:][key]})
            row_info.update({key:row[key] for key in columns_of_interest if key in row.keys()})
            run_df.append(row_info)
        # convert format to dataframe and add to our list
        list_of_dataframes.append(pd.DataFrame(run_df))
    # combine and then store
    wandb_records = pd.concat(list_of_dataframes)
    wandb_records.to_csv('logs/wandb_data/__full__'+SUMMARY_FILE)
    # return single data frame for vizualization
    return wandb_records

def format_dataframe(records, subfields={}):
    for key in subfields:
        records = records.loc[records[key] == subfields[key]]
    return records

def plot(fig_name='example',x='optim_steps', y='avg_loss',
            x_max=1000, m=1, loss='MSELoss', download_data=True,
            dataset_name='mushrooms', c=0.1, batch_size=100,
            episodes=100, stoch_reg=1):

    # =================================================
    # download data in
    if download_data:
        # download_wandb_summary()
        wandb_records = download_wandb_records()
    else:
        wandb_records = runs_df = pd.read_csv('logs/wandb_data/__full__'+SUMMARY_FILE, header=0, squeeze=True)

    # =================================================
    # create datasets
    sgd_data = format_dataframe(wandb_records,
        subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': 1, 'loss': loss, 'algo': 'SGD',
        'eta_schedule': 'stochastic', 'dataset_name': dataset_name})
    adam_data = format_dataframe(wandb_records,
        subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': 1, 'loss': loss, 'algo': 'Adam',
        'eta_schedule': 'constant', 'dataset_name': dataset_name})
    adagrad_data = format_dataframe(wandb_records,
        subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': 1, 'loss': loss, 'algo': 'Adagrad',
        'eta_schedule': 'constant', 'dataset_name': dataset_name})
    funcopt_data = format_dataframe(wandb_records,
        subfields={'batch_size': batch_size, 'episodes': episodes, 'c': c,
        'stoch_reg': stoch_reg, 'use_optimal_stepsize': 1,
        'loss': loss, 'algo': 'SGD_FMDOpt', 'm': m,
        'eta_schedule': 'stochastic', 'dataset_name': dataset_name})
    print(funcopt_data['optim_steps'])

    # =================================================
    # generate plots
    if x == 'function_evals+grad_evals':
        fig, ax = plt.subplots()
        #
        low_order_idx = (2*adam_data['optim_steps'] < x_max).nonzero().reshape(-1)
        high_order_idx = (funcopt_data['function_evals']+funcopt_data['grad_evals'] < x_max).nonzero().reshape(-1)
        #
        ax.plot(sgd_data['optim_steps'][low_order_idx], sgd_data[y][low_order_idx], label='SGD')
        ax.plot(adam_data['optim_steps'][low_order_idx], adam_data[y][low_order_idx], label='Adam')
        ax.plot(adagrad_data['optim_steps'][low_order_idx], adagrad_data[y][low_order_idx], label='Adagrad')
        ax.plot(funcopt_data[x][high_order_idx], SGD_FMDOpt1_data[y][high_order_idx], label='SGD_FMDOpt(m='+m+')')
        #
        ax.grid()
        plt.legend()
        plt.rcParams['figure.dpi'] = 400
        plt.xlabel(x)
        plt.ylabel(y)
        plt.title('Optimizer-Comparison: ' )
        # plt.show()
        plt.savefig(fig_name, bbox_inches='tight')
    else:
        fig, ax = plt.subplots()
        low_order_idx = (adam_data['optim_steps'] < x_max).nonzero().reshape(-1)
        high_order_idx = (funcopt_data[x]< x_max).nonzero().reshape(-1)
        #
        ax.plot(sgd_data['optim_steps'][low_order_idx], sgd_data[y][low_order_idx], label='SGD')
        ax.plot(adam_data['optim_steps'][low_order_idx], adam_data[y][low_order_idx], label='Adam')
        ax.plot(adagrad_data['optim_steps'][low_order_idx], adagrad_data[y][low_order_idx], label='Adagrad')
        ax.plot(funcopt_data[x][high_order_idx], funcopt_data[y][high_order_idx], label='SGD_FMDOpt(m=1)')
        #
        ax.grid()
        plt.legend()
        plt.rcParams['figure.dpi'] = 400
        plt.xlabel(x)
        plt.ylabel(y)
        plt.title('Optimizer-Comparison: ' )
        # plt.show()
        plt.savefig(fig_name, bbox_inches='tight')


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
    parser.add_argument('--download_data', type=int, default=1)
    args, knk = parser.parse_known_args()
    #
    return args, parser

def main():

    # get arguments
    args, parser = get_args()
    plot(fig_name=args.fig_name, x=args.x, y=args.y,
         x_max=args.max_steps, loss=args.loss, download_data=args.download_data)


if __name__ == "__main__":
    main()
