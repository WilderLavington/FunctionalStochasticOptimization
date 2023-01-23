#!/usr/bin/env python
# coding: utf-8

# In[17]:


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

#
from plotting_utils import *

#
USER='wilderlavington'
PROJECT='TargetBasedSurrogateOptimization-mfac'
SUMMARY_FILE='icml_mfac.csv'

# base info
m = [1, 10, 100]
dataset_names= ['mfac0', 'mfac1', 'mfac4', 'mfac']
sso_algos = ['SGD_FMDOpt', 'SLS_FMDOpt', 'Ada_FMDOpt']

# general settings
colors = mpl.cm.Set1.colors   # Qualitative colormap
colormap = {'SGD': '#44AA99' , 'SLS': '#DDCC77', 'Adam': '#88CCEE', 'Adagrad': '#332288'}
colormap.update({'SSO-1':  '#CC6677' , 'SSO-10': '#AA4499', 'SSO-100': '#882255', })
baselines = ['SGD', 'Adam', 'LSOpt', 'Adagrad']
algorithms = baselines + ['SSO-'+str(m_) for m_ in m]


label_map = {'optim_steps':'Optimization-Steps',
             'grad_norm':'Gradient-Norm',
             'avg_loss': 'Average-Loss'}
name_mask = {'LSOpt':'SLS', 'SGD': 'SGD', 'Adam': 'Adam', 'Adagrad':'Adagrad',
             'SLS_FMDOpt': 'SSO-SLS', 'SSO-1': 'SSO-1', 'SSO-100': 'SSO-100',
             'SSO-10': 'SSO-10'}

# mask baselines which do not have decay - schedules
def schedule_mask(sched, algo):
    if algo in ['Adam', 'Adagrad', 'Ada_FMDOpt', 'Diag_Ada_FMDOpt', ]:
        return 'constant'
    else:
        return sched

# create summary file
redownload = False
if redownload:
    download_wandb_summary(user=USER, project=PROJECT, summary_file=SUMMARY_FILE,
                    keyval_focus={'dataset_name': ['mfac', 'mfac1', 'mfac4', 'mfac0'],
                                  'algo': ['SGD', 'Adam', 'LSOpt', 'Adagrad', 'Sadagrad',
                                           'Adam', 'SGD_FMDOpt', 'SLS_FMDOpt'],
                                  'fullbatch': [1],
                                  'loss': ['MSELoss'],
                                  'm': [1,2,5,10,100,1000,10000],
                                  # 'batch_size': [5, 25, 125, 625],
                                  })
    wandb_records = download_wandb_records(user=USER, project=PROJECT, summary_file=SUMMARY_FILE)
else:
    wandb_records = pd.read_csv('./logs/wandb_data/__full__'+SUMMARY_FILE, header=0, low_memory=False).squeeze("columns")

#
def generate_mfac_figure(loss, schedule, wandb_records, fig_name, sso_algo='SGD_FMDOpt',
                        x ='optim_steps', y='avg_loss', include_leg=True):

    # init plots
    fig, axs = plt.subplots(1, len(dataset_names), figsize=(16, 3))
    dataset_name = dataset_names[0]

    # figure out axis automatically
    x_max = 0

    # mini-batch plots
    for col, dataset_name in enumerate(dataset_names):

        # figure out axis automatically
        x_max = 0

        # baselines
        for algo in ['SGD', 'Adam', 'Adagrad']: # 'Adagrad',
            sched_ = schedule_mask(schedule, algo)
            proc_df = format_dataframe(wandb_records,
                id_subfields={'fullbatch': 1, 'dataset_name': dataset_name,
                'use_optimal_stepsize': 0, 'loss': loss, 'algo': algo, 'log_lr': -3,
                'eta_schedule': schedule, 'dataset_name': dataset_name},
                x_col=x , y_col=y)
            if proc_df is not None:
                x_max = max(proc_df[x].values.max(), x_max)
                axs[col] = generate_plot(proc_df, x, y, axs[col], label=name_mask[algo],
                                             linestyle='dashed', color=colormap[name_mask[algo]])
            else:
                print('missing ', name_mask[algo], ' ',  dataset_name, 'full-batch')

        # baselines
        for algo in ['LSOpt']: # 'Adagrad',
            sched_ = schedule_mask(schedule, algo)
            proc_df = format_dataframe(wandb_records,
                id_subfields={'fullbatch': 1, 'dataset_name': dataset_name,
                'use_optimal_stepsize': 0, 'loss': loss, 'algo': algo, 'log_lr': 0,
                'eta_schedule': schedule, 'dataset_name': dataset_name},
                x_col=x , y_col=y)
            if proc_df is not None:
                x_max = max(proc_df[x].values.max(), x_max)
                axs[col] = generate_plot(proc_df, x, y, axs[col], label=name_mask[algo],
                                             linestyle='dashed', color=colormap[name_mask[algo]])
            else:
                print('missing ', name_mask[algo], ' ',  dataset_name, 'full-batch')


        # FMDopt theoretical
        for m_ in m:
            # create parsed info
            proc_df = format_dataframe(wandb_records,
                id_subfields={'fullbatch': 1, 'log_lr': 0,
                    'use_optimal_stepsize': 0, 'dataset_name': dataset_name,
                    'loss': loss, 'algo': sso_algo, 'm': m_,
                    'eta_schedule': schedule, 'dataset_name': dataset_name},
                     avg_subfields=['seed'], max_subfields=['c'],
                x_col=x, y_col=y)
            if proc_df is not None:
                x_max = max(proc_df[x].values.max(), x_max)
                axs[col] = generate_plot(proc_df, x, y, axs[col],
                    label='SSO-'+str(m_), linestyle='solid', color=colormap['SSO-'+str(m_)])
            else:
                print('missing FMDopt  ', m_, dataset_name, 'full-batch')

        #
        axs[col].grid() 
        axs[col].grid()

        # axs[col].ticklabel_format(axis='x', style='sci', scilimits=(0,0))
        axs[col].yaxis.set_major_locator(plt.MaxNLocator(4))
        axs[col].set_yscale("log")
        axs[col].set_xscale("log")
        if not include_leg:
            axs[col].set_title('model-type: '+str(dataset_name), fontsize=16)
            # axs[col].set_title('full-batch', fontsize=16)
        axs[col].set_ylabel(dataset_name, fontsize=16)
        axs[col].yaxis.set_label_position("right")

        axs[col].xaxis.set_minor_locator(mpl.ticker.LogLocator(base=10,numticks=100))
        axs[col].xaxis.set_minor_formatter(mpl.ticker.NullFormatter())
        axs[col].yaxis.set_minor_formatter(mpl.ticker.NullFormatter())

    # remaining format stuff
    if include_leg:
        handles = [mpatches.Patch(color=colormap[name_mask[algo]], label=algo) for algo in algorithms]
        leg = fig.legend(handles=handles,
               loc="lower center",   # Position of legend
               borderaxespad=1.65,    # Small spacing around legend box
               # title="Algorithms",  # Title for the legend
               fontsize=18,
               ncol=8,
               bbox_to_anchor=(0.525, -0.3),
               )

    plt.subplots_adjust(hspace=1.5)
    plt.rcParams['figure.dpi'] = 100# 400
    fig.tight_layout()

    # show / save
    plt.savefig('./plotting/plots/mfac-'+fig_name+'.pdf', bbox_inches='tight')
    plt.show()
    print('saved'+'./plotting/plots/mfac-'+fig_name+'.pdf')


# iterate over SSO-variants
for sso_algo in sso_algos:
    generate_mfac_figure('MSELoss', 'constant',
                        wandb_records, fig_name=sso_algo,
                        x ='optim_steps', y='avg_loss', include_leg=True,
                        sso_algo = 'SGD_FMDOpt')
