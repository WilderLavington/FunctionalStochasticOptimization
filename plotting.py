
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

def format_dataframe(records, id_subfields={}, avg_subfields=['seed'],
            max_subfields=['log_eta', 'eta_schedule', 'c'],
            x_col='optim_steps', y_col='avg_loss'):
    #
    pd.set_option('display.max_columns', None)
    for key in id_subfields:
        records = records.loc[records[key] == id_subfields[key]]
    if not len(records):
        print(id_subfields['algo']+' failed to load.')
        return None
    # remove nans
    records = records[records[y_col].notna()]
    important_cols = list(set(avg_subfields+max_subfields+\
        list(id_subfields.keys())+[x_col, y_col, 'optim_steps']))
    # remove redundant information
    records = records[important_cols]
    # average over avg_subfields
    records = records.drop(avg_subfields, axis=1)
    # group over averaging field
    gb = list(set(list(max_subfields+list(id_subfields.keys())+[x_col, 'optim_steps'])))
    # # create different statistical reccords
    # mean_records = records
    # mean_records = records.groupby(gb, as_index=False)[y_col].mean()
    # lowq_records = records.groupby(gb, as_index=False)[y_col].quantile(0.25)
    # highq_records = records.groupby(gb, as_index=False)[y_col].quantile(0.75)
    # mean_records['25qt'+y_col] = lowq_records[y_col]
    # mean_records['75qt'+y_col] = highq_records[y_col]
    # only look at final optim steps
    last_mean_records = records.loc[records['optim_steps'] == records['optim_steps'].max()]
    # get the best record
    best_record = last_mean_records[last_mean_records[y_col] == last_mean_records[y_col].min()]
    # find parameters of the best record
    merge_on = list(set(gb)-set(['optim_steps', x_col, y_col]))
    merge_on = [ x for x in merge_on if x in best_record.columns.values]
    best_records = pd.merge(best_record[merge_on], records, on=merge_on,how='left')
    final_records = best_records.groupby(merge_on+[x_col], as_index=False)[y_col].mean()
    final_records[y_col+'25'] = best_records.groupby(merge_on+[x_col], as_index=False)[y_col].quantile(0.25)[y_col]
    final_records[y_col+'75'] = best_records.groupby(merge_on+[x_col], as_index=False)[y_col].quantile(0.75)[y_col]
    final_records = final_records.sort_values(x_col, axis=0, ascending=True, inplace=False, kind='quicksort', na_position='last')
    # print(final_records)
    # return the records
    return final_records

def plot(fig_name='example',x='optim_steps', y='avg_loss',
            x_max=10000, m=[1,2,10,20], loss='MSELoss', download_data=True,
            dataset_name='mushrooms', batch_size=100,
            episodes=100,  func_only=True, eta_schedule='stochastic'):
    # =================================================
    # download data in
    if download_data:
        download_wandb_summary()
        wandb_records = download_wandb_records()
    else:
        wandb_records = runs_df = pd.read_csv('logs/wandb_data/__full__'+SUMMARY_FILE, header=0, squeeze=True)
    # =================================================
    # create datasets
    sgd_data = format_dataframe(wandb_records,
        id_subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': 0, 'loss': loss, 'algo': 'SGD',
        'eta_schedule': 'stochastic', 'dataset_name': dataset_name},
        x_col=x , y_col=y)
    adam_data = format_dataframe(wandb_records,
        id_subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': 0, 'loss': loss, 'algo': 'Adam',
        'eta_schedule': 'constant', 'dataset_name': dataset_name},
        x_col=x , y_col=y)
    adagrad_data = format_dataframe(wandb_records,
        id_subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': 0, 'loss': loss, 'algo': 'Adagrad',
        'eta_schedule': 'constant', 'dataset_name': dataset_name},
        x_col=x , y_col=y)
    funcopt_dataset = []
    for m_ in m:
        funcopt_dataset.append(format_dataframe(wandb_records,
        id_subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': 0,
        'loss': loss, 'algo': 'SGD_FMDOpt', 'm': m_,
        'eta_schedule': eta_schedule, 'dataset_name': dataset_name},
        x_col=x , y_col=y))
    # =================================================
    # generate plots
    # if x == 'function_evals+grad_evals':
    #     fig, ax = plt.subplots()
    #     if not func_only:
    #         low_order_idx = (torch.tensor(adam_data['optim_steps'].values) < x_max).nonzero().reshape(-1)
    #         ax.plot(torch.tensor(sgd_data['optim_steps'].values)[low_order_idx], torch.tensor(sgd_data[y].values)[low_order_idx], label='SGD')
    #         ax.plot(torch.tensor(adam_data['optim_steps'].values)[low_order_idx], torch.tensor(adam_data[y].values)[low_order_idx], label='Adam')
    #         ax.plot(torch.tensor(adagrad_data['optim_steps'].values)[low_order_idx], torch.tensor(adagrad_data[y].values)[low_order_idx], label='Adagrad')
    #     for m_ in m:
    #         funcopt_data = funcopt_dataset[s]
    #         high_order_idx = (torch.tensor(funcopt_data['function_evals'].values)+torch.tensor(funcopt_data['grad_evals'].values) < x_max).nonzero().reshape(-1)
    #         ax.plot((torch.tensor(funcopt_data['function_evals'].values)+torch.tensor(funcopt_data['grad_evals'].values))[high_order_idx],
    #             torch.tensor(funcopt_data[y].values)[high_order_idx], label='SGD_FMDOpt(m='+str(m_)+', reg='+str(stoch_reg_)+')')
    #     ax.grid()
    #     plt.legend()
    #     plt.rcParams['figure.dpi'] = 400
    #     plt.xlabel(x)
    #     plt.ylabel(y)
    #     plt.title('Optimizer-Comparison: ' )
    #     plt.savefig(fig_name+'.pdf', bbox_inches='tight')
    # else:
    fig, ax = plt.subplots()
    if not func_only:
        low_order_idx = (torch.tensor(sgd_data[x].values) < x_max).nonzero().reshape(-1)
        ax.plot(torch.tensor(sgd_data[x].values[low_order_idx]), torch.tensor(sgd_data[y].values[low_order_idx]), label='SGD')
        low_order_idx = (torch.tensor(adam_data[x].values) < x_max).nonzero().reshape(-1)
        ax.plot(torch.tensor(adam_data[x].values[low_order_idx]), torch.tensor(adam_data[y].values[low_order_idx]), label='Adam')
        low_order_idx = (torch.tensor(adagrad_data[x].values) < x_max).nonzero().reshape(-1)
        ax.plot(torch.tensor(adagrad_data[x].values[low_order_idx]), torch.tensor(adagrad_data[y].values[low_order_idx]), label='Adagrad')
    for m_, funcopt_data in enumerate(funcopt_dataset):
        if funcopt_data is not None:
            high_order_idx = (torch.tensor(funcopt_data[x].values) < x_max).nonzero().reshape(-1)
            ax.plot(torch.tensor(funcopt_data[x].values)[high_order_idx], torch.tensor(funcopt_data[y].values)[high_order_idx], label='SGD_FMDOpt(m='+str(m[m_]))
    ax.grid()
    plt.legend()
    plt.rcParams['figure.dpi'] = 400
    plt.xlabel(x)
    plt.ylabel(y)
    plt.title('Optimizer-Comparison: ' )
    # plt.show()
    plt.savefig(fig_name+'.pdf', bbox_inches='tight')


def get_args():
    # grab parse.
    parser = argparse.ArgumentParser(description='PyTorch Soft Actor-Critic Args')
    # optimization args
    parser.add_argument('--x', type=str, default='optim_steps', help='SGD,Adam,SGD_FMDOpt')
    parser.add_argument('--y', type=str, default='avg_loss')
    parser.add_argument('--loss', type=str, default='MSELoss')
    parser.add_argument('--fig_name', type=str, default='example')
    parser.add_argument('--dataset_name', type=str, default='mushrooms')
    parser.add_argument('--max_steps', type=int, default=100000)
    parser.add_argument('--batch_size', type=int, default=100)
    parser.add_argument('--download_data', type=int, default=1)
    parser.add_argument('--func_only', type=int, default=1)
    parser.add_argument('--eta_schedule', type=str, default='constant')

    args, knk = parser.parse_known_args()
    #
    return args, parser

def main():

    # get arguments
    args, parser = get_args()
    plot(fig_name=args.fig_name, x=args.x, y=args.y, func_only=args.func_only,
         x_max=args.max_steps, loss=args.loss, download_data=args.download_data,
         dataset_name=args.dataset_name, batch_size = args.batch_size)


if __name__ == "__main__":
    main()
