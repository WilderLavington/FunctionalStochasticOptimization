#!/usr/bin/env python
# coding: utf-8

# In[220]:


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

# In[221]:


USER='wilderlavington'
PROJECT='FunctionalOptimizationFinal'
try:
    os.makedirs("plots/aistats/")
except FileExistsError:
    print("File already exists")



def download_wandb_summary(user, project, summary_file):
    """
    Download a summary of all runs on the wandb project
    """
    runs = api.runs(user+'/'+project, per_page=1e7)
    summary_list, config_list, name_list, id_list, commits = [], [], [], [], []
    assert len([run for run in runs])
    for run in tqdm(runs):
        run = api.run(user+'/'+project+"/"+run.id)
        conf = {k: v for k, v in run.config.items()}
        if 'env_name' in conf.keys():
            summary_list.append(run.summary._json_dict)
            config_list.append(conf)
            name_list.append(run.name)
            id_list.append(run.id)
            if run.commit is not None:
                commits.append(run.commit)
            else:
                commits.append('None')
        else:
            pass
    assert len(summary_list)
    commits_df = pd.DataFrame.from_records(commits)
    summary_df = pd.DataFrame.from_records(summary_list)
    config_df = pd.DataFrame.from_records(config_list)
    name_df = pd.DataFrame({"name": name_list, "id": id_list})
    all_df = pd.concat([name_df, config_df, summary_df, commits_df], axis=1)
    Path('logs/wandb_data/').mkdir(parents=True, exist_ok=True)
    all_df.to_csv('logs/wandb_data/'+summary_file)
    return all_df

def download_wandb_records(user, project, summary_file):
    """
    Download data for all runs in summary file
    """
    # load it all in and clean it up
    runs_df = pd.read_csv('logs/wandb_data/'+summary_file, header=0, squeeze=True)
    runs_df = runs_df.loc[:,~runs_df.columns.duplicated()]
    columns_of_interest = ['policy_loss', 'log_policy_loss', 'policy_return',
                            'total_examples', 'env_name', 'model_type']
    # set which columns we will store for vizualization
    list_of_dataframes = []
    # iterate through all runs to create individual databases
    for ex in tqdm(range(len(runs_df))):
        # get the associated runs
        try:
            run = api.run(user+'/'+project+'/'+runs_df.loc[runs_df.iloc[ex,0],:]['id'])
            run_df = []
            # iterate through all rows in online database
            base_info = {}
            for key in runs_df.loc[runs_df.iloc[ex,0],:].keys():
                base_info.update({key:runs_df.loc[runs_df.iloc[ex,0],:][key]})
            for i, row in run.history().iterrows():
                row_info = deepcopy(base_info)
                row_info.update({key:row[key] for key in columns_of_interest if key in row.keys()})
                run_df.append(row_info)
            # convert format to dataframe and add to our list
            list_of_dataframes.append(pd.DataFrame(run_df))
        except:
            pass
    # combine and then store
    wandb_records = pd.concat(list_of_dataframes)
    wandb_records.to_csv('logs/wandb_data/__full__'+summary_file)
    # return single data frame for vizualization
    return wandb_records

def format_dataframe(records, id_subfields={}, avg_subfields=['seed'], max_subfields=[], x_col='total_examples', y_col='policy_return', k=1):

    #
    pd.set_option('display.max_columns', None)
    max_subfields = [m for m in max_subfields if m not in id_subfields.keys()]
    for key in id_subfields:
        records = records.loc[records[key] == id_subfields[key]]
#         print(len(records), key)
    if not len(records):
        return None
    # remove nans
    records = records[records[y_col].notna()]
    important_cols = list(set(avg_subfields+max_subfields+        list(id_subfields.keys())+[x_col, y_col, 'total_examples']))
    # remove redundant information
    records = records[important_cols]
    # average over avg_subfields
    records = records.drop(avg_subfields, axis=1)
    # group over averaging field
    gb = list(set(list(max_subfields+list(id_subfields.keys())+[x_col, 'total_examples'])))
    # only look at final optim steps
    last_mean_records = records.loc[records['total_examples'] == records['total_examples'].max()]
    # get the best record
    best_record = last_mean_records[last_mean_records[y_col] == last_mean_records[y_col].min()]
    # find parameters of the best record
    merge_on = list(set(gb)-set(['total_examples', x_col, y_col]))
    merge_on = [ x for x in merge_on if x in best_record.columns.values]
    best_records = pd.merge(best_record[merge_on], records, on=merge_on,how='left')
    final_records = best_records.groupby(merge_on+[x_col], as_index=False)[y_col].mean()
    final_records[y_col+'25'] = best_records.groupby(merge_on+[x_col], as_index=False)[y_col].quantile(0.25)[y_col]
    final_records[y_col+'75'] = best_records.groupby(merge_on+[x_col], as_index=False)[y_col].quantile(0.75)[y_col]
    final_records = final_records.sort_values(x_col, axis=0, ascending=True, inplace=False, kind='quicksort', na_position='last')
    # smooth outputs
    final_records[y_col+'75'] = smooth(final_records[y_col+'75'],k)
    final_records[y_col+'25'] = smooth(final_records[y_col+'25'],k)
    final_records[y_col] = smooth(final_records[y_col],k)
    # return
    return final_records

def smooth(array, k):
    array = np.array(array)
    new_array = deepcopy(array)
    # print(array[max(0,i-k):i] )
    for i in range(len(array)):
        if str(array[i]) != 'nan':
            avg_list = [val for val in array[max(0,i-k):i+1] if str(val) != 'nan']
            new_array[i] = sum(avg_list) / len(avg_list)
    return new_array

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

#         # SLS-FuncOpt
#         proc_df_loss = format_dataframe(wandb_records,
#             id_subfields={'beta': beta, 'env_name': env_name, 'algo': 'SSO_OSls', 'model_type': model_type},
#             x_col=x , y_col=y[0])
#         proc_df_return = format_dataframe(wandb_records,
#             id_subfields={'beta': beta, 'env_name': env_name, 'algo': 'SSO_OSls', 'model_type': model_type},
#             x_col=x , y_col=y[1])
#         if proc_df_loss is not None:
#             axs[0][adj_col] = generate_plot(proc_df_loss, x, y[0], axs[0][adj_col], label='SSO-OSls',
#                                          linestyle='solid', color=colormap['SSO_OSls'])
#             axs[1][adj_col] = generate_plot(proc_df_return, x, y[1], axs[1][adj_col], label='SSO-OSls',
#                                          linestyle='solid', color=colormap['SSO_OSls'])
#         else:
#             print('missing SSO-OSls  ', env_name, beta)

#         # SLS-FuncOpt
#         proc_df_loss = format_dataframe(wandb_records,
#             id_subfields={'beta': beta, 'env_name': env_name, 'algo': 'SSO_AdaOGD', 'model_type': model_type},
#             x_col=x , y_col=y[0])
#         proc_df_return = format_dataframe(wandb_records,
#             id_subfields={'beta': beta, 'env_name': env_name, 'algo': 'SSO_AdaOGD', 'model_type': model_type},
#             x_col=x , y_col=y[1])
#         if proc_df_loss is not None:
#             axs[0][adj_col] = generate_plot(proc_df_loss, x, y[0], axs[0][adj_col], label='SSO-AdaOGD',
#                                          linestyle='solid', color=colormap['SSO_AdaOGD'])
#             axs[1][adj_col] = generate_plot(proc_df_return, x, y[1], axs[1][adj_col], label='SSO-AdaOGD',
#                                          linestyle='solid', color=colormap['SSO_AdaOGD'])
#         else:
#             print('missing SSO-AdaOGD  ', env_name, beta)

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
    SUMMARY_FILE = "/home/wlavington/Desktop/FunctionalStochasticOptimization/plotting/logs/wandb_data/__full__FuncOptMujoco.csv"
    # SUMMARY_FILE='FuncOptMujoco.csv'
    # download_wandb_summary(user=USER, project=PROJECT, summary_file=SUMMARY_FILE)
    # download_wandb_records(user=USER, project=PROJECT, summary_file=SUMMARY_FILE)
    wandb_records = pd.read_csv(SUMMARY_FILE, header=0, squeeze=True)
    generate_mujoco_figure(wandb_records, fig_name='Walker2d', include_leg=False)
    generate_mujoco_figure(wandb_records, env_name='Hopper-v2', fig_name='Legend_fig', include_leg=True)
if __name__ == "__main__":
    main()
