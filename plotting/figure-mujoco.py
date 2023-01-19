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
import  matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import itertools
import time
import matplotlib as mpl
import matplotlib.ticker as ticker
from plotting_utils import *


USER='wilderlavington'
PROJECT='FunctionalOptimizationFinal'
SUMMARY_FILE = "/home/wlavington/Desktop/FunctionalStochasticOptimization/plotting/logs/wandb_data/__full__FuncOptMujoco.csv"

try:
    os.makedirs("plots/aistats/")
except FileExistsError:
    print("File already exists")

def generate_mujoco_figure(wandb_records, env_name='Walker2d-v2', fig_name='ex', x ='total_examples', y=['log_policy_loss', 'policy_return'], include_leg=True):

    #base info
    dataset_names = ['Mujoco']
    betas = [1, 0]
#     env_names = ['Walker2d-v2', 'Hopper-v2']
    model_type = 'linear'

    # init plots
    fig, axs = plt.subplots(2, 2, figsize=(10, 4))
    colors = mpl.cm.Set1.colors   # Qualitative colormap
    colormap = {'Adagrad': '#44AA99' , 'SLS': '#DDCC77', 'Adam': '#88CCEE'}
    colormap.update({'SSO-1':  '#CC6677',  'SSO-10': '#AA4499', 'SSO-100': '#882255' , 'SSO-1000': '#332288'})
    algorithms = ['Adagrad', 'Adam', 'SLS', 'SSO-1', 'SSO-10', 'SSO-100', 'SSO-1000'] # 'SGD'
    label_map = {x:'Total Environment Interactions', y[0]:'Log-Policy-Loss', y[1]:'Policy-Return'}

    # format axis
    for row in range(2):
        for col in range(2):
            axs[row][col].grid()

    # now add in the lines to each of the plots
#     for row, env_name in enumerate(env_names):
    for col, beta in enumerate(betas):

        # figure out axis automatically
        x_max = 0
        adj_col = col

        # Adagrad
        proc_df_loss = format_dataframe(wandb_records,
            id_subfields={'beta': beta, 'env_name': env_name, 'algo': 'AdaOGD', 'model_type': model_type},
            x_col=x , y_col=y[0], k=2)
        proc_df_return = format_dataframe(wandb_records,
            id_subfields={'beta': beta, 'env_name': env_name, 'algo': 'AdaOGD', 'model_type': model_type},
            x_col=x , y_col=y[1], k=2)
        if proc_df_loss is not None:
            axs[0][adj_col] = generate_plot(proc_df_loss, x, y[0], axs[0][adj_col], label='Adagrad',
                                         linestyle='dashed', color=colormap['Adagrad'])
            axs[1][adj_col] = generate_plot(proc_df_return, x, y[1], axs[1][adj_col], label='Adagrad',
                                         linestyle='dashed', color=colormap['Adagrad'])
        else:
            print('missing Adagrad  ', env_name, beta)

        # Adam
        proc_df_loss = format_dataframe(wandb_records,
            id_subfields={'beta': beta, 'env_name': env_name, 'algo': 'AdamOGD', 'model_type': model_type},
            x_col=x , y_col=y[0], k=2)
        proc_df_return = format_dataframe(wandb_records,
            id_subfields={'beta': beta, 'env_name': env_name, 'algo': 'AdamOGD', 'model_type': model_type},
            x_col=x , y_col=y[1], k=2)
        if proc_df_loss is not None:
            axs[0][adj_col] = generate_plot(proc_df_loss, x, y[0], axs[0][adj_col], label='Adam',
                                         linestyle='dashed', color=colormap['Adam'])
            axs[1][adj_col] = generate_plot(proc_df_return, x, y[1], axs[1][adj_col], label='Adam',
                                         linestyle='dashed', color=colormap['Adam'])
        else:
            print('missing Adam  ', env_name, beta)

        # OSls
        proc_df_loss = format_dataframe(wandb_records,
            id_subfields={'beta': beta, 'env_name': env_name, 'algo': 'OSls', 'model_type': model_type},
            x_col=x , y_col=y[0], k=2)
        proc_df_return = format_dataframe(wandb_records,
            id_subfields={'beta': beta, 'env_name': env_name, 'algo': 'OSls', 'model_type': model_type},
            x_col=x , y_col=y[1], k=2)
        if proc_df_loss is not None:
            axs[0][adj_col] = generate_plot(proc_df_loss, x, y[0], axs[0][adj_col], label='SLS',
                                         linestyle='dashed', color=colormap['SLS'])
            axs[1][adj_col] = generate_plot(proc_df_return, x, y[1], axs[1][adj_col], label='SLS',
                                         linestyle='dashed', color=colormap['SLS'])
        else:
            print('missing OSls  ', env_name, beta)

        # SSO-OGD
        for m in [1, 10,100,1000]:
            proc_df_loss = format_dataframe(wandb_records,
                id_subfields={'beta': beta, 'env_name': env_name, 'm': m, 'algo': 'SSO_OGD', 'model_type': model_type},
                x_col=x , y_col=y[0], k=2)
            proc_df_return = format_dataframe(wandb_records,
                id_subfields={'beta': beta, 'env_name': env_name, 'm': m, 'algo': 'SSO_OGD', 'model_type': model_type},
                x_col=x , y_col=y[1], k=2)
            if proc_df_loss is not None:
                axs[0][adj_col] = generate_plot(proc_df_loss, x, y[0], axs[0][adj_col], label='SSO-'+str(m),
                                             linestyle='solid', color=colormap['SSO-'+str(m)])
                axs[1][adj_col] = generate_plot(proc_df_return, x, y[1], axs[1][adj_col], label='SSO-'+str(m),
                                             linestyle='solid', color=colormap['SSO-'+str(m)])
            else:
                print('missing SSO-'+str(m), env_name, beta)

        axs[0][-1].set_ylabel('Log-Policy-Loss', fontsize=16)
        axs[1][-1].set_ylabel('Policy-Return', fontsize=16)
        axs[1][0].set_xlabel('Total-Examples', fontsize=16)
        axs[1][1].set_xlabel('Total-Examples', fontsize=16)
        axs[0][-1].yaxis.set_label_position("right")
        axs[1][-1].yaxis.set_label_position("right")
        axs[0][0].set_title('Behavioral Cloning: ', fontsize=22)
        axs[0][1].set_title('Online Imitation: ', fontsize=22)

    # remaining format stuff
    if include_leg:
        handles = [mpatches.Patch(color=colormap[algo], label=algo) for algo in algorithms]
        leg = fig.legend(handles=handles,
               loc="right",   # Position of legend
               borderaxespad=1.65,    # Small spacing around legend box
               # title="Algorithms",  # Title for the legend
               fontsize=22,
               ncol=1,
               bbox_to_anchor=(1.325, 0.5),
               )
    plt.subplots_adjust(hspace=1.5)
#     plt.rcParams['figure.dpi'] = 100
    fig.tight_layout()

    # show / save
    plt.savefig('plotting/plots/aistats/oil-'+fig_name+'.pdf', bbox_inches='tight')



    plt.show()

def main():

    # SUMMARY_FILE='FuncOptMujoco.csv'
    download_wandb_summary(user=USER, project=PROJECT, summary_file=SUMMARY_FILE)
    download_wandb_records(user=USER, project=PROJECT, summary_file=SUMMARY_FILE,
        columns_of_interest = ['policy_loss', 'log_policy_loss', 'policy_return',
                               'total_examples', 'env_name', 'model_type'])
    wandb_records = pd.read_csv(SUMMARY_FILE, header=0, squeeze=True)
    generate_mujoco_figure(wandb_records, fig_name='Walker2d', include_leg=False)
    generate_mujoco_figure(wandb_records, env_name='Hopper-v2', fig_name='Legend_fig', include_leg=True)
if __name__ == "__main__":
    main()
