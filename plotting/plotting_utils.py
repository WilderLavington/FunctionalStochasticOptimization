
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

def download_wandb_summary(user, project, summary_file, key_focus=[],
            keyval_focus={}):
    """
    Download a summary of all runs on the wandb project
    """
    runs = api.runs(user+'/'+project, per_page=1e7)
    summary_list, config_list, name_list, id_list, commits = [], [], [], [], []
    assert len([run for run in runs])
    for run in tqdm(runs):
        run = api.run(user+'/'+project+"/"+run.id)
        conf = {k: v for k, v in run.config.items()}
        include = True
        # check for simple key requirements
        if not all(item in list(conf.keys()) for item in key_focus):
            include = False
        # check if we have key-value requirements
        for key in keyval_focus.keys():
            if key not in list(conf.keys()):
                include = False
            else: 
                include *= bool(np.sum([conf[key] == d for d in keyval_focus[key]]))
        # if this data-point is to be included then append it to summary file.
        if include:
            summary_list.append(run.summary._json_dict)
            config_list.append(conf)
            name_list.append(run.name)
            id_list.append(run.id)
            if run.commit is not None:
                commits.append(run.commit)
            else:
                commits.append('None')
    assert len(summary_list)
    commits_df = pd.DataFrame.from_records(commits)
    summary_df = pd.DataFrame.from_records(summary_list)
    config_df = pd.DataFrame.from_records(config_list)
    name_df = pd.DataFrame({"name": name_list, "id": id_list})
    all_df = pd.concat([name_df, config_df, summary_df, commits_df], axis=1)
    Path('logs/wandb_data/').mkdir(parents=True, exist_ok=True)
    all_df.to_csv('logs/wandb_data/'+summary_file)

def download_wandb_records(user, project, summary_file,
        columns_of_interest = ['avg_loss', 'optim_steps', 'grad_norm', 'time_elapsed', \
         'grad_evals', 'function_evals', 'eta', 'inner_steps', 'eta_scale']):
    """
    Download data for all runs in summary file
    """
    # load it all in and clean it up
    runs_df = pd.read_csv('logs/wandb_data/'+summary_file, header=0, squeeze=True)
    runs_df = runs_df.loc[:,~runs_df.columns.duplicated()]

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

def generate_plot(proc_df, x, y, ax, label, linestyle='solid', color=None, x_max=1000000):
    low_order_idx = (torch.tensor(proc_df[x].values) < x_max).nonzero().reshape(-1)
    if label:
        ax.plot(torch.tensor(proc_df[x].values[low_order_idx]),
                torch.tensor(proc_df[y].values[low_order_idx]),
                label=label, linestyle=linestyle, color=color, alpha=0.8,
                linewidth=4)
    else:
        ax.plot(torch.tensor(proc_df[x].values[low_order_idx]),
                torch.tensor(proc_df[y].values[low_order_idx]),
                label='_nolegend_', linestyle=linestyle, color=color, alpha=0.8,
                linewidth=4)
    ax.fill_between(torch.tensor(proc_df[x].values)[low_order_idx],
            torch.tensor(proc_df[y+'75'].values)[low_order_idx],
            torch.tensor(proc_df[y+'25'].values)[low_order_idx],
            alpha = 0.4, label='_nolegend_', linestyle=linestyle, color=color)
    return ax

def smooth(array, k):
    array = np.array(array)
    new_array = deepcopy(array)
    # print(array[max(0,i-k):i] )
    for i in range(len(array)):
        if str(array[i]) != 'nan':
            avg_list = [val for val in array[max(0,i-k):i+1] if str(val) != 'nan']
            new_array[i] = sum(avg_list) / len(avg_list)
    return new_array


def format_dataframe(records, id_subfields={}, base_stepper='optim_steps',
        avg_subfields=['seed'], max_subfields=[], x_col='total_examples', y_col='policy_return', k=1):
    #
    pd.set_option('display.max_columns', None)
    max_subfields = [m for m in max_subfields if m not in id_subfields.keys()]
    for key in id_subfields:
        records = records.loc[records[key] == id_subfields[key]]
    records['function_evals+grad_evals'] = records['function_evals']+records['grad_evals']
    if not len(records):
        return None
    # remove nans
    records = records[records[y_col].notna()]
    important_cols = list(set(avg_subfields+max_subfields+\
        list(id_subfields.keys())+[x_col, y_col, base_stepper]))
    # remove redundant information
    records = records[important_cols]
    # average over avg_subfields
    records = records.drop(avg_subfields, axis=1)
    # group over averaging field
    gb = list(set(list(max_subfields+list(id_subfields.keys())+[x_col, base_stepper])))
    # only look at final optim steps
    last_mean_records = records.loc[records[base_stepper] == records[base_stepper].max()]
    # get the best record
    best_record = last_mean_records[last_mean_records[y_col] == last_mean_records[y_col].min()]
    # find parameters of the best record
    merge_on = list(set(gb)-set([base_stepper, x_col, y_col]))
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
