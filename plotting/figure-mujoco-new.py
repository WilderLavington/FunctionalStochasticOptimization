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


#
USER='wilderlavington'
PROJECT='TargetBasedSurrogateOptimization-mujoco'
SUMMARY_FILE='icml_mujoco.csv'


# base info
m = [1, 10, 100]
dataset_names= ['Mujoco']
env_names = ['Walker2d-v2', 'Hopper-v2']
sso_algos = ['SGD_FMDOpt', 'SLS_FMDOpt', 'Ada_FMDOpt']
columns_of_interest = ['policy_loss', 'log_policy_loss', 'policy_return', 'model_type',
                       'total_examples', 'env_name', 'beta', 'log_lr', 'algo', 'seed', 'm',
                       'update', 'grad_norm', 'optimal_return']
model_mask = {'nn': 'Nueral', 'linear': 'Linear'}
# create summary file
redownload = False
if redownload:
    download_wandb_summary(user=USER, project=PROJECT, summary_file=SUMMARY_FILE,
                    keyval_focus={'dataset_name': dataset_names,
                                  'env_name': env_names,
                                  'algo': ['OGD', 'AdamOGD', 'AdaOGD', 'OSLS',
                                           'OSls', 'SSO_OGD', 'SSO_SLS'],
                                  'm': [1,2,5,10,100,1000],
                                  # 'batch_size': [5, 25, 125, 625],
                                  })
    wandb_records = download_wandb_records(user=USER, project=PROJECT, summary_file=SUMMARY_FILE,
                columns_of_interest = columns_of_interest)
else:
    wandb_records = pd.read_csv('./logs/wandb_data/__full__'+SUMMARY_FILE, header=0, low_memory=False).squeeze("columns")

def export_legend(legend, filename="legend.png", expand=[-5,-5,5,5]):
    fig  = legend.figure
    fig.canvas.draw()
    bbox  = legend.get_window_extent()
    bbox = bbox.from_extents(*(bbox.extents + np.array(expand)))
    bbox = bbox.transformed(fig.dpi_scale_trans.inverted())
    fig.savefig(filename, dpi="figure", bbox_inches=bbox)

def generate_mujoco_figure(wandb_records, env_name='Walker2d-v2', fig_name='ex', model_type = 'linear',
        x ='total_examples', y=['log_policy_loss', 'policy_return'], include_leg=True):

    #base info
    dataset_names = ['Mujoco']
    betas = [1, 0]
    model_types = ['linear', 'nn']

    wandb_records = wandb_records[columns_of_interest]

    # init plots
    fig, axs = plt.subplots(2,len(betas), figsize=(14, 6))
    colors = mpl.cm.Set1.colors   # Qualitative colormap
    colormap = {'Adagrad': '#44AA99' , 'SLS': '#DDCC77', 'Adam': '#88CCEE'}
    colormap.update({'SSO-1':  '#CC6677',  'SSO-10': '#AA4499', 'SSO-100': '#882255' , 'SSO-1000': '#332288'})
    algorithms = ['AdaOGD', 'AdamOGD', 'OSLS', 'SSO-1', 'SSO-10', 'SSO-100', 'SSO-1000'] # 'SGD'
    label_map = {x:'Total Environment Interactions', y[0]:'Log-Policy-Loss', y[1]:'Policy-Return'}
    name_mask = {'OSLS':'SLS', 'OGD': 'SGD', 'AdamOGD': 'Adam', 'AdaOGD':'Adagrad',
                 'SLS_FMDOpt': 'SSO-SLS', 'SSO-1': 'SSO-1', 'SSO-100': 'SSO-100',
                 'SSO-10': 'SSO-10', 'SSO-1000': 'SSO-1000'}
    # format axis
    for col in range(2):
        for row in range(2):
            axs[row][col].grid()

    for block, env_name in enumerate([env_name]):
        for col, beta in enumerate(betas):
            for row, model_type in enumerate(model_types):

                # figure out axis automatically
                x_max = 0
                adj_col = col

                v = wandb_records['algo']
                proc_df_loss = format_dataframe(wandb_records,
                    id_subfields={'beta': beta, 'env_name': env_name, 'algo': 'AdaOGD',
                        'model_type': model_type, 'log_lr': -3}, base_stepper='update',
                    x_col=x , y_col=y[0], k=2, max_vals=50)

                if proc_df_loss is not None:
                    axs[row][adj_col] = generate_plot(proc_df_loss, x, y[0], axs[row][adj_col], label='Adagrad',
                                                 linestyle='dashed', color=colormap['Adagrad'])
                else:
                    print('missing Adagrad  ', env_name, beta)

                # Adam
                proc_df_loss = format_dataframe(wandb_records,
                    id_subfields={'beta': beta, 'env_name': env_name, 'algo': 'AdamOGD',
                            'model_type': model_type, 'log_lr': -3}, base_stepper='update',
                    x_col=x , y_col=y[0], k=2, max_vals=50)
                if proc_df_loss is not None:
                    axs[row][adj_col] = generate_plot(proc_df_loss, x, y[0], axs[row][adj_col], label='Adam',
                                                 linestyle='dashed', color=colormap['Adam'])
                else:
                    print('missing Adam  ', env_name, beta)

                # OSLS
                proc_df_loss = format_dataframe(wandb_records,
                    id_subfields={'beta': beta, 'env_name': env_name, 'algo': 'OSLS',
                        'model_type': model_type, 'log_lr': 0}, base_stepper='update',
                    x_col=x , y_col=y[0], k=2, max_vals=50)
                if proc_df_loss is not None:
                    axs[row][adj_col] = generate_plot(proc_df_loss, x, y[0], axs[row][adj_col], label='SLS',
                                                 linestyle='dashed', color=colormap['SLS'], x_max=50000)
                else:
                    print('missing OSls  ', env_name, beta)

                # SSO-OGD
                for m in [1, 10,100,1000]:
                    proc_df_loss = format_dataframe(wandb_records,
                        id_subfields={'beta': beta, 'env_name': env_name, 'm': m,
                            'algo': 'SSO_OGD', 'model_type': model_type, 'log_lr': 0}, base_stepper='update',
                        x_col=x , y_col=y[0], k=2, max_vals=50)
                    if proc_df_loss is not None:
                        axs[row][adj_col] = generate_plot(proc_df_loss, x, y[0], axs[row][adj_col], label='SSO-'+str(m),
                                                     linestyle='solid', color=colormap['SSO-'+str(m)])
                    else:
                        print('missing SSO-'+str(m), env_name, beta)



    # add x axis in
    for col in range(2):
        axs[1][col].set_xlabel('Total-Examples', fontsize=30)

    # set the mode type info
    if include_leg:
        for row, model_type in enumerate(model_types):
            axs[row][-1].set_ylabel(model_mask[model_type], fontsize=30)
            axs[row][-1].yaxis.set_label_position("right")

    # set label for y axis value
    axs[0][0].set_ylabel('Log-Loss', fontsize=30)
    axs[1][0].set_ylabel('Log-Loss', fontsize=30)
    axs[0][0].yaxis.set_label_position("left")
    axs[1][0].yaxis.set_label_position("left")

    # set the titles
    axs[0][0].set_title('Behavioral Cloning: ', fontsize=36)
    axs[0][1].set_title('Online Imitation: ', fontsize=36)

    plt.subplots_adjust(hspace=1.5)
#     plt.rcParams['figure.dpi'] = 100
    fig.tight_layout()

    # show / save
    plt.savefig('plotting/plots/icml/oil-'+fig_name+'.pdf', bbox_inches='tight')
    # plt.show()

    if include_leg:
        # remaining format stuff
        fig = plt.figure()
        width_in = 6.5
        height_in = 2.5
        fig.set_size_inches([width_in, height_in])
        handles = [mpatches.Patch(color=colormap[name_mask[algo]], label=name_mask[algo]) for algo in algorithms]
        leg = fig.legend(handles=handles,
               loc="lower center",   # Position of legend
               # borderaxespad=1.65,    # Small spacing around legend box
               # title="Algorithms",  # Title for the legend
               fontsize=22,
               ncol=len(algorithms),
               # bbox_to_anchor=(1.225, 0.5),
               )
        plt.savefig('plotting/plots/icml/oil-'+fig_name+'-legend.pdf', bbox_inches='tight')



generate_mujoco_figure(wandb_records, env_name = 'Hopper-v2',
        fig_name='fig-icml-right', include_leg=False)
generate_mujoco_figure(wandb_records, env_name = 'Walker2d-v2',
        fig_name='fig-icml-left', include_leg=True)
