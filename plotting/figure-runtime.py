

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

# pre-computed run-times for sample size 1000
runtime_strings = {
'10': \
    {'sgd': \
        {'gather_times': ['00:00:00.01', '00:00:00.01', '00:00:00.02', '00:00:00.01'],
         'update_times': ['00:00:00.00', '00:00:00.00', '00:00:00.00', '00:00:00.00']},
     'sls': \
        {'gather_times': ['00:00:00.02', '00:00:00.01', '00:00:00.01', '00:00:00.01'] ,
         'update_times': ['00:00:00.01', '00:00:00.01', '00:00:00.01', '00:00:00.01'] },
    'sso_1': \
        {'gather_times': [ '00:00:00.02', '00:00:00.01', '00:00:00.01', '00:00:00.02'],
         'update_times': ['00:00:00.01', '00:00:00.01', '00:00:00.01', '00:00:00.01']},
    'sso_10': \
        {'gather_times': ['00:00:00.02', '00:00:00.01', '00:00:00.01', '00:00:00.01'],
         'update_times': ['00:00:00.08', '00:00:00.07', '00:00:00.06', '00:00:00.07']},
    'sso_100': \
        {'gather_times': ['00:00:00.01', '00:00:00.01', '00:00:00.01', '00:00:00.01'],
         'update_times': ['00:00:00.61', '00:00:00.58', '00:00:00.58', '00:00:00.58']},
    'sso_1000': \
        {'gather_times': [ '00:00:00.01', '00:00:00.01', '00:00:00.01', '00:00:00.01'],
         'update_times': [ '00:00:05.62', '00:00:05.61', '00:00:05.64', '00:00:05.70']  }},
'100': \
    {'sgd': \
        {'gather_times': [ '00:00:00.14', '00:00:00.14', '00:00:00.14', '00:00:00.14'],
         'update_times': [ '00:00:00.00', '00:00:00.00', '00:00:00.00', '00:00:00.00']},
     'sls': \
        {'gather_times': ['00:00:00.13', '00:00:00.14', '00:00:00.14', '00:00:00.14'],
         'update_times': ['00:00:00.03', '00:00:00.03', '00:00:00.04', '00:00:00.03'] },
    'sso_1': \
        {'gather_times': ['00:00:00.14', '00:00:00.14', '00:00:00.14', '00:00:00.14'],
         'update_times': [ '00:00:00.03', '00:00:00.04', '00:00:00.04', '00:00:00.03']},
    'sso_10': \
        {'gather_times': ['00:00:00.14', '00:00:00.14', '00:00:00.14', '00:00:00.14'],
         'update_times': [ '00:00:00.11', '00:00:00.11', '00:00:00.11', '00:00:00.11']},
    'sso_100': \
        {'gather_times': [ '00:00:00.15', '00:00:00.15', '00:00:00.14', '00:00:00.15'],
         'update_times': [ '00:00:00.72', '00:00:00.73', '00:00:00.74', '00:00:00.73']},
    'sso_1000': \
        {'gather_times': [ '00:00:00.14', '00:00:00.14', '00:00:00.15', '00:00:00.15'],
         'update_times': [ '00:00:07.24', '00:00:07.34', '00:00:07.31', '00:00:07.33']  }},
'1000': \
    {'sgd': \
        {'gather_times': ['00:00:01.37', '00:00:01.39', '00:00:01.38', '00:00:01.39'],
         'update_times': ['00:00:00.01', '00:00:00.01', '00:00:00.01', '00:00:00.01']},
    'sls': \
        {'gather_times': ['00:00:01.29', '00:00:01.31', '00:00:01.35', '00:00:01.34'],
         'update_times': ['00:00:00.24', '00:00:00.23', '00:00:00.24', '00:00:00.23'] },
    'sso_1': \
        {'gather_times': ['00:00:01.32', '00:00:01.34', '00:00:01.35', '00:00:01.35'],
         'update_times': ['00:00:00.26', '00:00:00.24', '00:00:00.25', '00:00:00.24']},
    'sso_10': \
        {'gather_times': ['00:00:01.38', '00:00:01.40', '00:00:01.41', '00:00:01.43'],
         'update_times': ['00:00:00.49', '00:00:00.48', '00:00:00.49', '00:00:00.46']},
    'sso_100': \
        {'gather_times': ['00:00:01.40', '00:00:01.42', '00:00:01.46', '00:00:01.43'],
         'update_times': ['00:00:02.63', '00:00:02.64', '00:00:02.63', '00:00:02.63']},
    'sso_1000': \
        {'gather_times': ['00:00:01.34', '00:00:01.42', '00:00:01.44', '00:00:01.44'],
         'update_times': ['00:00:25.68', '00:00:26.62', '00:00:26.82', '00:00:27.44']  }},
'10000': \
    {'sgd': \
        {'gather_times': ['00:00:14.33', '00:00:13.93', '00:00:13.99', '00:00:14.00'],
         'update_times': ['00:00:00.09', '00:00:00.08', '00:00:00.08', '00:00:00.08']},
    'sls': \
        {'gather_times': ['00:00:14.06', '00:00:13.86', '00:00:14.05', '00:00:14.02'] ,
         'update_times': ['00:00:02.42', '00:00:02.39', '00:00:02.31', '00:00:02.44'] },
    'sso_1': \
        {'gather_times': ['00:00:13.78', '00:00:13.83', '00:00:14.27', '00:00:14.14'],
         'update_times': ['00:00:02.58', '00:00:02.38', '00:00:02.39', '00:00:02.40']},
    'sso_10': \
        {'gather_times': ['00:00:14.20', '00:00:14.17', '00:00:13.83', '00:00:13.92'],
         'update_times': ['00:00:04.12', '00:00:04.08', '00:00:04.19', '00:00:04.28']},
    'sso_100': \
        {'gather_times': ['00:00:14.25', '00:00:14.91', '00:00:14.62', '00:00:14.58'],
         'update_times': ['00:00:23.20', '00:00:23.73', '00:00:24.32', '00:00:25.15']},
    'sso_1000': \
        {'gather_times': ['00:00:14.62', '00:00:16.83', '00:00:15.81', '00:00:19.93'],
         'update_times': ['00:04:38.28', '00:04:47.01', '00:04:51.95', '00:04:39.91']  }}}

def convert_runtime_string(run_times):
    ftr = [3600,60,1,1/60]
    my_conv = lambda timestr: sum([a*b for a,b in zip(ftr, map(float,timestr.split(':')))])
    gather_times = np.array([my_conv(rt) for rt in run_times['gather_times']])
    update_times = np.array([my_conv(rt) for rt in run_times['update_times']])
    run_times = update_times + gather_times
    return np.min(run_times), np.max(run_times), np.mean(run_times)


# init plots
fig, axs = plt.subplots(1, 4, figsize=(16, 2))
axs = [axs]
colors = mpl.cm.Set1.colors   # Qualitative colormap
colormap = {'SGD': '#44AA99' , 'SLS': '#DDCC77', 'Adam': '#88CCEE',
           'SSO-1':  '#CC6677' ,  'SSO-10': '#AA4499', 'SSO-100': '#882255' , 'SSO-1000': '#332288'}
label_map = {'sgd':'SGD', 'sls':'SLS','sso_1':'SSO-1','sso_10':'SSO-10','sso_100':'SSO-100',}



# now add in the lines to each of the plots
algos = ['sgd', 'sls', 'sso_1', 'sso_10', 'sso_100']
sample_sizes = ['10', '100', '1000', '10000']

# compute run-time of sgd


for col, batch_size in enumerate(sample_sizes):
    #
    run_times_mean = []
    run_times_min = []
    run_times_max = []
    # mini-batch plots
    for _, algo  in enumerate(algos):
        # normalize by SGD step-time
        run_times_mean_sgd = convert_runtime_string(runtime_strings[batch_size]['sgd'])[-1]
        # algo indf
        min_rt, max_rt, mean_rt = convert_runtime_string(runtime_strings[batch_size][algo])
        run_times_mean.append(mean_rt/run_times_mean_sgd)
        run_times_max.append((max_rt-mean_rt)/run_times_mean_sgd)
        run_times_min.append((mean_rt-min_rt)/run_times_mean_sgd)

    # figure out a
    axs[0][col].barh([_ for _ in range(len(algos))], run_times_mean,
                       align='center', edgecolor = "black",
                       color=[colormap[label_map[algo]] for algo in algos],
                       xerr=[run_times_min, run_times_max]
                     )
    axs[0][0].set_yticks([_ for _ in range(len(algos))], labels=[label_map[algo] for algo in algos])
    if col:
        axs[0][col].set_yticklabels([])
    axs[0][col].set_title('batch-size: '+str(batch_size), fontsize=16)
    axs[0][col].grid()
    # # shif to log scale and make the limits the same
    # axs[0][col].set_xscale("log")
    # axs[0][col].set_xscale("log")
# #
axs[0][0].set_xticks([0, 10, 20, 30, 40, 50])
axs[0][1].set_xticks([0, 1, 2, 3, 4, 5, 6])
axs[0][2].set_xticks([0, 0.5, 1, 1.5, 2, 2.5, 3])
axs[0][3].set_xticks([0, 0.5, 1, 1.5, 2, 2.5, 3])

# plt.show()

# plt.subplots_adjust(hspace=1.15)
plt.rcParams['figure.dpi'] = 100# 400
fig.tight_layout()
plt.savefig('plotting/plots/icml/runtime-mujoco.pdf', bbox_inches='tight')

       #

       # axs[0][-1].set_title('full-batch', fontsize=18)
       # axs[row][-1].set_ylabel(dataset_name, fontsize=18)
       # axs[row][-1].yaxis.set_label_position("right")


   #
   # # show / save

   # plt.show()


# In[16]:
