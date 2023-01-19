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
PROJECT='TargetBasedSurrogateOptimization'
SUMMARY_FILE='sharan_report_icml.csv'
# base info
batch_sizes = [25, 125, 625]
m = [1, 10, 20]

#
colors = mpl.cm.Set1.colors   # Qualitative colormap
colormap = {'SGD': '#44AA99' , 'SLS': '#DDCC77', 'Adam': '#88CCEE' }
colormap.update({'SSO-1':  '#CC6677' ,  'SSO-10': '#AA4499', 'SSO-20': '#882255' , 'SSO-SLS': '#332288'})

algorithms = ['SGD', 'Adam', 'SLS'] + ['SSO-'+str(m_) for m_ in m] +['SSO-SLS']
dataset_names= ['mushrooms', 'ijcnn', 'rcv1']
sso_algos = ['SGD_FMDOpt', 'SLS_FMDOpt', 'Ada_FMDOpt', 'SGD_FMDOpt']
label_map = {'optim_steps':'Optimization-Steps',
             'grad_norm':'Gradient-Norm',
             'avg_loss': 'Average-Loss'}
#
download_wandb_summary(user=USER, project=PROJECT, summary_file=SUMMARY_FILE)
download_wandb_records(user=USER, project=PROJECT, summary_file=SUMMARY_FILE)

#
def generate_sgd_figure(loss, schedule, wandb_records, fig_name,
                        x ='optim_steps', y='avg_loss', include_leg=True):

    # init plots
    fig, axs = plt.subplots(len(dataset_names), len(batch_sizes)+1, figsize=(16, 3))

    # now add in the lines to each of the plots
    for row, dataset_name in enumerate(dataset_names):

        # figure out axis automatically
        x_max = 0

        # SLS
        proc_df = format_dataframe(wandb_records,
            id_subfields={'fullbatch': 1,
            'use_optimal_stepsize': 1, 'loss': loss, 'algo': 'LSOpt',
            'eta_schedule': schedule, 'dataset_name': dataset_name},
            x_col=x , y_col=y)
        if proc_df is not None:
            x_max = max(proc_df[x].values.max(), x_max)
            axs[row][-1] = generate_plot(proc_df, x, y, axs[row][-1], label='SLS',
                                         linestyle='dashed', color=colormap['SLS'])
        else:
            print('missing SLS  ', dataset_name, 'full-batch')

        # SGD
        proc_df = format_dataframe(wandb_records,
            id_subfields={'fullbatch': 1,
            'use_optimal_stepsize': 1, 'loss': loss, 'algo': 'SGD',
            'eta_schedule': schedule, 'dataset_name': dataset_name},
            x_col=x , y_col=y)
        if proc_df is not None:
            x_max = max(proc_df[x].values.max(), x_max)
            axs[row][-1] = generate_plot(proc_df, x, y, axs[row][-1], label='SGD',
                                         linestyle='dashed', color=colormap['SGD'])
        else:
            print('missing SGD  ', dataset_name, 'full-batch')

        # Adam
        proc_df = format_dataframe(wandb_records,
            id_subfields={'fullbatch': 1,
            'use_optimal_stepsize': 1, 'loss': loss, 'algo': 'Adam',
            'eta_schedule': 'constant', 'dataset_name': dataset_name},
            x_col=x , y_col=y)
        if proc_df is not None:
            x_max = max(proc_df[x].values.max(), x_max)
            axs[row][-1] = generate_plot(proc_df, x, y, axs[row][-1], label='Adam',
                                         linestyle='dashed', color=colormap['Adam'])
        else:
            print('missing Adam  ', dataset_name, 'full-batch')

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
        axs[row][-1].set_xscale("log")

        # SLS-FMDOpt
        proc_df = format_dataframe(wandb_records,
            id_subfields={'fullbatch': 1,
                'use_optimal_stepsize': 1, #'_step': 499.0,
                'loss': loss, 'algo': 'SLS_FMDOpt', 'm': 20,
                'eta_schedule': schedule, 'dataset_name': dataset_name},
                 avg_subfields=['seed'], max_subfields=['c'],
            x_col=x, y_col=y)
        if proc_df is not None:
            x_max = max(proc_df[x].values.max(), x_max)
            axs[row][-1] = generate_plot(proc_df, x, y, axs[row][-1],
                label='SSO-'+str(m_), linestyle='solid', color=colormap['SSO-SLS'])
        else:
            print('missing FMDopt  ', m_, dataset_name, batch_size)

        # mini-batch plots
        for col, batch_size in enumerate(batch_sizes):

            # figure out axis automatically
            x_max = 0

            # SLS
            proc_df = format_dataframe(wandb_records,
                id_subfields={'batch_size': batch_size,  #'_step': 499.0,
                'use_optimal_stepsize': 1, 'loss': loss, 'algo': 'LSOpt',
                'eta_schedule': schedule, 'dataset_name': dataset_name},
                x_col=x , y_col=y)
            if proc_df is not None:
                x_max = max(proc_df[x].values.max(), x_max)
                axs[row][col] = generate_plot(proc_df, x, y, axs[row][col], label='SLS',
                                             linestyle='dashed', color=colormap['SLS'])
            else:
                print('missing SLS  ', dataset_name, batch_size)

            # SGD
            proc_df = format_dataframe(wandb_records,
                id_subfields={'batch_size': batch_size, #'_step': 499.0,
                'use_optimal_stepsize': 1, 'loss': loss, 'algo': 'SGD',
                'eta_schedule': schedule, 'dataset_name': dataset_name},
                x_col=x , y_col=y)
            if proc_df is not None:
                x_max = max(proc_df[x].values.max(), x_max)
                axs[row][col] = generate_plot(proc_df, x, y, axs[row][col], label='SGD',
                                             linestyle='dashed', color=colormap['SGD'])
            else:
                print('missing SGD  ', dataset_name, batch_size)

            # Adam
            proc_df = format_dataframe(wandb_records,
                id_subfields={'batch_size': batch_size, #'_step': 499.0,
                'use_optimal_stepsize': 1, 'loss': loss, 'algo': 'Adam',
                'eta_schedule': 'constant', 'dataset_name': dataset_name},
                x_col=x , y_col=y)
            if proc_df is not None:
                x_max = max(proc_df[x].values.max(), x_max)
                axs[row][col] = generate_plot(proc_df, x, y, axs[row][col], label='Adam',
                                             linestyle='dashed', color=colormap['Adam'])
            else:
                print('missing Adam  ', dataset_name, batch_size)

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

            # SLS-FMDOpt
            proc_df = format_dataframe(wandb_records,
                id_subfields={'batch_size': batch_size,
                    'use_optimal_stepsize': 1, #'_step': 499.0,
                    'loss': loss, 'algo': 'SLS_FMDOpt', 'm': 20,
                    'eta_schedule': schedule, 'dataset_name': dataset_name},
                     avg_subfields=['seed'], max_subfields=['c'],
                x_col=x, y_col=y)
            if proc_df is not None:
                x_max = max(proc_df[x].values.max(), x_max)
                axs[row][col] = generate_plot(proc_df, x, y, axs[row][col],
                    label='SSO-'+str(m_), linestyle='solid', color=colormap['SSO-SLS'])
            else:
                print('missing FMDopt  ', m_, dataset_name, batch_size)

            axs[row][col].grid()
            axs[row][col].ticklabel_format(axis='x', style='sci', scilimits=(0,0))
            axs[row][col].yaxis.set_major_locator(plt.MaxNLocator(4))
            axs[row][col].set_yscale("log")
            axs[row][col].set_xscale("log")
            if not include_leg:
                axs[0][col].set_title('batch-size: '+str(batch_size), fontsize=16)
                axs[0][-1].set_title('full-batch', fontsize=16)
            axs[row][-1].set_ylabel(dataset_name, fontsize=16)
            axs[row][-1].yaxis.set_label_position("right")

        axs[row][col].xaxis.set_minor_locator(mpl.ticker.LogLocator(base=10,numticks=100))
        axs[row][col].xaxis.set_minor_formatter(mpl.ticker.NullFormatter())
        axs[row][col].yaxis.set_minor_formatter(mpl.ticker.NullFormatter())

    # remaining format stuff
    if include_leg:
        handles = [mpatches.Patch(color=colormap[algo], label=algo) for algo in algorithms]
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
    plt.savefig('plots/'+fig_name+loss+'.pdf', bbox_inches='tight')
    plt.show()


# iterate over SSO-variants
generate_sgd_figure('MSELoss', 'constant',
                    wandb_records, fig_name=SUMMARY_FILE+'_a',
                    x ='optim_steps', y='avg_loss', include_leg=False,
                    sso_algo = 'SGD_FMDOpt')
generate_sgd_figure('BCEWithLogitsLoss', 'constant',
                    wandb_records, fig_name=SUMMARY_FILE+'_a',
                    x ='optim_steps', y='avg_loss', include_leg=True,
                    sso_algo = 'SGD_FMDOpt')
