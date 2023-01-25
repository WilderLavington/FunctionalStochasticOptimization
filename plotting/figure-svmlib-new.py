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
PROJECT='TargetBasedSurrogateOptimization-svmlib'
SUMMARY_FILE='icml_svmlib.csv'

# base info
batch_sizes = [25, 125, 625]
m = [1, 10, 20]
dataset_names = ['rcv1', 'mushrooms', 'ijcnn']
loss = 'BCEWithLogitsLoss'
dataset_name = 'rcv1'

# general settings
colors = mpl.cm.Set1.colors   # Qualitative colormap
colormap = {'SGD': '#44AA99' , 'SLS': '#DDCC77', 'Adam': '#88CCEE', 'Sadagrad': '#117733'}
colormap.update({'SSO-1':  '#CC6677' ,  'SSO-10': '#AA4499', 'SSO-20': '#882255', 'SSO-100': '#332288'})
baselines = ['SGD', 'Adam', 'LSOpt', 'Sadagrad']
algorithms = baselines + ['SSO-'+str(m_) for m_ in m]

sso_algos = ['SGD_FMDOpt', 'SLS_FMDOpt'] #, 'Adam'
label_map = {'optim_steps':'Optimization-Steps',
             'grad_norm':'Gradient-Norm',
             'avg_loss': 'Average-Loss'}
name_mask = {'LSOpt':'SLS', 'SGD': 'SGD', 'Adam': 'Adam', 'Sadagrad':'Sadagrad',
             'SSO-1': 'SSO-1', 'SSO-10': 'SSO-10', 'SSO-20': 'SSO-20', 'SSO-5': 'SSO-5',}
algo_map = {'SGD_FMDOpt': 'SGD', 'SLS_FMDOpt': 'SLS', 'Ada_FMDOpt': 'Sadagrad'}

# mask baselines which do not have decay - schedules
def schedule_mask(sched, algo):
    if algo in ['Adam', 'Sadagrad', 'Ada_FMDOpt']:
        return 'constant'
    else:
        return sched

# create summary file
redownload = False
if redownload:
    download_wandb_summary(user=USER, project=PROJECT, summary_file=SUMMARY_FILE,
                    keyval_focus={'dataset_name': dataset_names,
                                  'fullbatch': [1, 0]})
    wandb_records = download_wandb_records(user=USER, project=PROJECT, summary_file=SUMMARY_FILE)
else:
    wandb_records = pd.read_csv('./logs/wandb_data/__full__'+SUMMARY_FILE, header=0, low_memory=False).squeeze("columns")

linestyle_mask = {'Sadagrad': {'SLS_FMDOpt': 'dashed', 'SGD_FMDOpt': 'dashed', 'Ada_FMDOpt': 'dotted'},
                  'LSOpt': {'SLS_FMDOpt': 'dotted', 'SGD_FMDOpt': 'dashed', 'Ada_FMDOpt': 'dashed'},
                  'SGD': {'SLS_FMDOpt': 'dashed', 'SGD_FMDOpt': 'dotted', 'Ada_FMDOpt': 'dashed'},
                  'Adam': {'SLS_FMDOpt': 'dashed', 'SGD_FMDOpt': 'dashed', 'Ada_FMDOpt': 'dashed'},
                  }
marker_mask = {'Sadagrad': {'SLS_FMDOpt': None, 'SGD_FMDOpt': None, 'Ada_FMDOpt': None},
                  'LSOpt': {'SLS_FMDOpt': None, 'SGD_FMDOpt': None, 'Ada_FMDOpt': None},
                  'SGD': {'SLS_FMDOpt': None, 'SGD_FMDOpt': None, 'Ada_FMDOpt': None},
                  'Adam': {'SLS_FMDOpt': None, 'SGD_FMDOpt': None, 'Ada_FMDOpt': None},
                  }

#
def generate_svmlib_figure(loss, schedule, wandb_records, fig_name,
                        x ='optim_steps', y='avg_loss', include_leg=True):

    # init plots
    fig, axs = plt.subplots(len(sso_algos), len(batch_sizes)+1, figsize=(28, 6))

    # now add in the lines to each of the plots
    for row, sso_algo in enumerate(sso_algos):

        # figure out axis automatically
        x_max = 0

        # baselines
        for algo in ['LSOpt', 'SGD', 'Adam', 'Sadagrad']:
            sched_ = schedule_mask(schedule, algo)
            proc_df = format_dataframe(wandb_records,
                id_subfields={'fullbatch': 1,
                'use_optimal_stepsize': 1, 'loss': loss, 'algo': algo,
                'eta_schedule': schedule, 'dataset_name': dataset_name},
                x_col=x , y_col=y)
            if proc_df is not None:
                x_max = max(proc_df[x].values.max(), x_max)
                axs[row][-1] = generate_plot(proc_df, x, y, axs[row][-1], label=name_mask[algo],
                                             marker=marker_mask[algo][sso_algo], linestyle=linestyle_mask[algo][sso_algo],
                                             color=colormap[name_mask[algo]])
            else:
                print('missing ', name_mask[algo], ' ',  dataset_name, 'full-batch')

        # FMDopt theoretical
        for m_ in m:
            # create parsed info
            proc_df = format_dataframe(wandb_records,
                id_subfields={'fullbatch': 1,
                    'use_optimal_stepsize': 1,
                    'loss': loss, 'algo': sso_algo, 'm': m_,
                    'eta_schedule': schedule, 'dataset_name': dataset_name},
                     avg_subfields=['seed'], max_subfields=['c'],
                x_col=x, y_col=y)
            if proc_df is not None:
                x_max = max(proc_df[x].values.max(), x_max)
                axs[row][-1] = generate_plot(proc_df, x, y, axs[row][-1],
                    label='SSO-'+str(m_), linestyle='solid', color=colormap['SSO-'+str(m_)])
            else:
                print('missing FMDopt  ', m_, dataset_name, 'full-batch')
        axs[row][-1].grid()
        axs[row][-1].set_yscale("log")

        # mini-batch plots
        for col, batch_size in enumerate(batch_sizes):

            # figure out axis automatically
            x_max = 0

            # baselines
            for algo in ['LSOpt', 'SGD', 'Adam', 'Sadagrad']:
                sched_ = schedule_mask(schedule, algo)
                proc_df = format_dataframe(wandb_records,
                    id_subfields={'batch_size': batch_size,
                    'use_optimal_stepsize': 1, 'loss': loss, 'algo': algo,
                    'eta_schedule': schedule, 'dataset_name': dataset_name},
                    x_col=x , y_col=y)
                if proc_df is not None:
                    x_max = max(proc_df[x].values.max(), x_max)
                    axs[row][col] = generate_plot(proc_df, x, y, axs[row][col], label=name_mask[algo],
                                                marker=marker_mask[algo][sso_algo], linestyle=linestyle_mask[algo][sso_algo],
                                                 color=colormap[name_mask[algo]])
                else:
                    print('missing ', name_mask[algo], ' ',  dataset_name, batch_size)

            # FMDopt theoretical
            for m_ in m:
                # create parsed info
                proc_df = format_dataframe(wandb_records,
                    id_subfields={'batch_size': batch_size,
                        'use_optimal_stepsize': 1, #'_step': 499.0,
                        'loss': loss, 'algo': sso_algo, 'm': m_,
                        'eta_schedule': schedule, 'dataset_name': dataset_name},
                         avg_subfields=['seed'], max_subfields=['c'],
                    x_col=x, y_col=y)
                if proc_df is not None:
                    x_max = max(proc_df[x].values.max(), x_max)
                    axs[row][col] = generate_plot(proc_df, x, y, axs[row][col],
                        label='SSO-'+str(m_), linestyle='solid', color=colormap['SSO-'+str(m_)])
                else:
                    print('missing FMDopt  ', m_, dataset_name, batch_size)

            axs[row][col].grid()
            axs[row][col].ticklabel_format(axis='x', style='sci', scilimits=(0,0))
            axs[row][-1].ticklabel_format(axis='x', style='sci', scilimits=(0,0))

            axs[row][col].yaxis.set_major_locator(plt.MaxNLocator(4))
            axs[row][col].set_yscale("log")
            # axs[row][col].set_xscale("log")

            # if not include_leg:
            axs[0][col].set_title('batch-size: '+str(batch_size), fontsize=36)
            axs[0][-1].set_title('full-batch', fontsize=36)

            #
            axs[row][-1].set_ylabel('SSO-'+algo_map[sso_algo], fontsize=30)
            axs[row][-1].yaxis.set_label_position("right")
            # axs[0][col].get_xaxis().set_visible(False)
            # axs[0][-1].get_xaxis().set_visible(False)
            #
            axs[0][0].set_ylabel('Loss', fontsize=30)
            axs[1][0].set_ylabel('Loss', fontsize=30)
            axs[0][0].yaxis.set_label_position("left")
            axs[1][0].yaxis.set_label_position("left")

            #
            axs[-1][col].set_xlabel('Optimization-Steps', fontsize=30)
            axs[-1][-1].set_xlabel('Optimization-Steps', fontsize=30)

            axs[row][col].xaxis.set_minor_locator(mpl.ticker.LogLocator(base=10,numticks=100))
            axs[row][col].xaxis.set_minor_formatter(mpl.ticker.NullFormatter())
            axs[row][col].yaxis.set_minor_formatter(mpl.ticker.NullFormatter())

        axs[row][-1].xaxis.set_minor_locator(mpl.ticker.LogLocator(base=10,numticks=100))
        axs[row][-1].xaxis.set_minor_formatter(mpl.ticker.NullFormatter())
        axs[row][-1].yaxis.set_minor_formatter(mpl.ticker.NullFormatter())


    # # remaining format stuff
    # if include_leg:
    #     handles = [mpatches.Patch(color=colormap[name_mask[algo]], label=name_mask[algo]) for algo in algorithms]
    #     leg = fig.legend(handles=handles,
    #            loc="upper center",   # Position of legend
    #            borderaxespad=1.65,    # Small spacing around legend box
    #            # title="Algorithms",  # Title for the legend
    #            fontsize=28,
    #            ncol=8,
    #            bbox_to_anchor=(0.525, -0.16),
    #            )

    plt.subplots_adjust(hspace=1.5)
    plt.rcParams['figure.dpi'] = 100# 400
    fig.tight_layout()

    # show / save
    plt.savefig('./plotting/plots/icml/svmlib-'+fig_name+loss+dataset_name+'.pdf', bbox_inches='tight')

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
        plt.savefig('plotting/plots/icml/svmlib-'+fig_name+'-legend.pdf', bbox_inches='tight')

# iterate over SSO-variants
generate_svmlib_figure(loss, 'constant',
                    wandb_records, fig_name='icml-svmlib',
                    x ='optim_steps', y='avg_loss', include_leg=True)
    # generate_sgd_figure('BCEWithLogitsLoss', 'constant',
    #                     wandb_records, fig_name=sso_algo,
    #                     x ='optim_steps', y='avg_loss', include_leg=True,
    #                     sso_algo = 'SGD_FMDOpt')
