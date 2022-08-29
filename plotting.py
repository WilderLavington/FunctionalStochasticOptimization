
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
import itertools
USER='wilderlavington'
PROJECT='FunctionalStochasticOptimization'
SUMMARY_FILE='sharan_report_0816.csv'

def download_wandb_summary(sweeps=None):
    """
    Download a summary of all runs on the wandb project
    """
    runs = api.runs(USER+'/'+PROJECT, per_page=100000)
    summary_list = []
    config_list = []
    name_list = []
    id_list = []
    print(len([run for run in runs]))
    assert len([run for run in runs])
    for run in tqdm(runs):
        if (sweeps is not None) and (run.sweep.id in sweeps):
            summary_list.append(run.summary._json_dict)
            run = api.run(USER+'/'+PROJECT+"/"+run.id)
            config_list.append({k: v for k, v in run.config.items()})
            name_list.append(run.name)
            id_list.append(run.id)
        elif sweeps is None:
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
    columns_of_interest = ['avg_loss', 'optim_steps', 'grad_norm', 'time_elapsed', \
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
            run_df.append(row_info['time_elapsed'])
        # convert format to dataframe and add to our list
        list_of_dataframes.append(pd.DataFrame(run_df))
    # combine and then store
    wandb_records = pd.concat(list_of_dataframes)
    wandb_records.to_csv('logs/wandb_data/__full__'+SUMMARY_FILE)
    # return single data frame for vizualization
    return wandb_records

def smooth(array, k):
    array = np.array(array)
    new_array = deepcopy(array)
    # print(array[max(0,i-k):i] )
    for i in range(len(array)):
        if str(array[i]) != 'nan':
            avg_list = [val for val in array[max(0,i-k):i+1] if str(val) != 'nan']
            new_array[i] = sum(avg_list) / len(avg_list)
    return new_array

def create_sensetivity_table(x='optim_steps', y='avg_loss', download_data=False,
            loss=['MSELoss', 'CrossEntropyLoss', 'BCEWithLogitsLoss'],
            dataset_name=['mushrooms', 'ijcnn'], batch_size=[100, 500],
            episodes=100, eta_schedule=['constant', 'stochastic'],
            log_eta=[-3.5, 3.5, -2.5, 2.5, -1.5, 1.5, 0.], m=[1,2,10,20],
            algo=['SGD', 'Adam', 'Adagrad', 'SGD_FMDOpt'],
            text_file_name='data_sense'):
    # =================================================
    # download data in
    if download_data:
        download_wandb_summary()
        wandb_records = download_wandb_records()
    else:
        wandb_records = runs_df = pd.read_csv('logs/wandb_data/__full__'+SUMMARY_FILE, header=0, squeeze=True)

    # create grab all datasets
    combinations = itertools.product(*[loss, dataset_name, batch_size, eta_schedule, log_eta, algo, m])
    final_records = []
    for loss_, dataset_name_, batch_size_, eta_schedule_, log_eta_, algo_, m_ in combinations:
        out = format_dataframe(wandb_records,
            id_subfields={'batch_size': batch_size_, 'episodes': episodes,
            'use_optimal_stepsize': 0, 'loss':loss_, 'algo': algo_,
            'log_eta': log_eta_, 'eta_schedule': eta_schedule_,
            'dataset_name': dataset_name_, 'm': m_},
            x_col=x , y_col=y)
        if out:
            _, best_record = out
            if best_record['optim_steps'].values[0] in [6930.0, 8019.0]:
                final_records.append(best_record)
    # final_records = pd.DataFrame(final_records)
    final_records = pd.concat(final_records, axis=0, ignore_index=True)
    final_records = final_records.drop(['use_optimal_stepsize', 'episodes', 'batch_size', 'c'], axis=1)
    final_records = final_records.drop_duplicates()
    final_records.boxplot(column=y, by=list(set(final_records.columns)-set(['log_eta'])))
    tfile = open(text_file_name+'.txt', 'w')
    tfile.write(final_records.to_string())
    tfile.close()

def format_dataframe(records, id_subfields={}, avg_subfields=['seed'],
            max_subfields=['log_eta', 'eta_schedule', 'c'],
            x_col='optim_steps', y_col='avg_loss'):
    #
    pd.set_option('display.max_columns', None)
    max_subfields = [m for m in max_subfields if m not in id_subfields.keys()]
    for key in id_subfields:
        print(key, len(records), records[key].unique())
        records = records.loc[records[key] == id_subfields[key]]
    records['function_evals+grad_evals'] = records['function_evals']+records['grad_evals']
    if not len(records):
        raise Exception
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
    final_records[y_col+'75'] = final_records[y_col+'75']
    final_records[y_col+'25'] = final_records[y_col+'25']
    final_records[y_col] = final_records[y_col]

    # return the records
    return final_records, best_record

def plot(fig_name='example',x='optim_steps', y='avg_loss',
            x_max=10000, m=[1,2,10,20], loss='MSELoss', download_data=True,
            dataset_name='mushrooms', batch_size=100,
            episodes=100,  func_only=True, eta_schedule='stochastic',
            use_optimal_stepsize=0, alter_baselines=0,
            vizualize=True, save=False):
    # =================================================
    # download data in
    if download_data:
        download_wandb_summary()
        wandb_records = download_wandb_records()
    else:
        wandb_records = runs_df = pd.read_csv('logs/wandb_data/__full__'+SUMMARY_FILE, header=0, squeeze=True)
    # =================================================
    # create datasets
    sgd_data, best_sgd = format_dataframe(wandb_records,
        id_subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': use_optimal_stepsize, 'loss': loss, 'algo': 'SGD',
        'eta_schedule': 'stochastic', 'dataset_name': dataset_name},
        x_col=x , y_col=y)
    adam_data, best_adam = format_dataframe(wandb_records,
        id_subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': use_optimal_stepsize, 'loss': loss, 'algo': 'Adam',
        'eta_schedule': 'constant', 'dataset_name': dataset_name},
        x_col=x , y_col=y)
    adagrad_data, best_adagrad = format_dataframe(wandb_records,
        id_subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': use_optimal_stepsize, 'loss': loss, 'algo': 'Adagrad',
        'eta_schedule': 'constant', 'dataset_name': dataset_name},
        x_col=x , y_col=y)
    sls_data, best_sls = format_dataframe(wandb_records,
        id_subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': use_optimal_stepsize, 'loss': loss, 'algo': 'LSOpt',
        'eta_schedule': 'constant', 'dataset_name': dataset_name},
        x_col=x , y_col=y)
    funcopt_dataset = []
    for m_ in m:
        funcopt_dataset.append(format_dataframe(wandb_records,
        id_subfields={'batch_size': batch_size, 'episodes': episodes,
        'use_optimal_stepsize': use_optimal_stepsize,
        'loss': loss, 'algo': 'SGD_FMDOpt', 'm': m_,
        'eta_schedule': eta_schedule, 'dataset_name': dataset_name},
        x_col=x , y_col=y))

    # =================================================
    # generate general plots (SGD)
    fig, ax = plt.subplots()
    if not func_only:
        low_order_idx = (torch.tensor(sgd_data[x].values) < x_max).nonzero().reshape(-1)
        ax.plot(torch.tensor(sgd_data[x].values[low_order_idx]), torch.tensor(sgd_data[y].values[low_order_idx]), label='SGD')
        ax.fill_between(torch.tensor(sgd_data[x].values)[low_order_idx],
            torch.tensor(sgd_data[y+'75'].values)[low_order_idx],
            torch.tensor(sgd_data[y+'25'].values)[low_order_idx],
            alpha = 0.5, label='_nolegend_')
        low_order_idx = (torch.tensor(sls_data[x].values) < x_max).nonzero().reshape(-1)
        ax.plot(torch.tensor(sls_data[x].values[low_order_idx]), torch.tensor(sls_data[y].values[low_order_idx]), label='SGD')
        ax.fill_between(torch.tensor(sls_data[x].values)[low_order_idx],
            torch.tensor(sls_data[y+'75'].values)[low_order_idx],
            torch.tensor(sls_data[y+'25'].values)[low_order_idx],
            alpha = 0.5, label='_nolegend_')
    # adam / adagrad plots
    if alter_baselines:
        low_order_idx = (torch.tensor(adam_data[x].values) < x_max).nonzero().reshape(-1)
        ax.plot(torch.tensor(adam_data[x].values[low_order_idx]), torch.tensor(adam_data[y].values[low_order_idx]), label='Adam')
        ax.fill_between(torch.tensor(adam_data[x].values)[low_order_idx],
            torch.tensor(adam_data[y+'75'].values)[low_order_idx],
            torch.tensor(adam_data[y+'25'].values)[low_order_idx],
            alpha = 0.5, label='_nolegend_')
        low_order_idx = (torch.tensor(adagrad_data[x].values) < x_max).nonzero().reshape(-1)
        ax.plot(torch.tensor(adagrad_data[x].values[low_order_idx]), torch.tensor(adagrad_data[y].values[low_order_idx]), label='Adagrad')
        ax.fill_between(torch.tensor(adagrad_data[x].values)[low_order_idx],
            torch.tensor(adagrad_data[y+'75'].values)[low_order_idx],
            torch.tensor(adagrad_data[y+'25'].values)[low_order_idx],
            alpha = 0.5, label='_nolegend_')
    # func-opt plots
    for m_, funcopt_data in enumerate(funcopt_dataset):
        if funcopt_data is not None:
            high_order_idx = (torch.tensor(funcopt_data[0][x].values) < x_max).nonzero().reshape(-1)
            ax.plot(torch.tensor(funcopt_data[0][x].values)[high_order_idx], torch.tensor(funcopt_data[0][y].values)[high_order_idx], label='SGD_FMDOpt(m='+str(m[m_]))
            ax.fill_between(torch.tensor(funcopt_data[0][x].values)[high_order_idx],
                torch.tensor(funcopt_data[0][y+'75'].values)[high_order_idx],
                torch.tensor(funcopt_data[0][y+'25'].values)[high_order_idx],
                alpha = 0.5, label='_nolegend_')
    ax.grid()
    plt.legend()
    plt.yscale("log")
    plt.rcParams['figure.dpi'] = 400
    plt.xlabel(x)
    plt.ylabel(y)
    plt.title('Optimizer-Comparison: ' )

    # do we want to save
    if save:
        plt.savefig(fig_name+'.pdf', bbox_inches='tight')

    # show atm (so we dont need to find it )
    if vizualize:
        plt.show()


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
    parser.add_argument('--alter_baselines', type=int, default=0)
    parser.add_argument('--use_optimal_stepsize', type=int, default=0)
    parser.add_argument('--create_sensetivity_table', type=int, default=0)
    parser.add_argument('--performance_plot', type=int, default=1)
    args, knk = parser.parse_known_args()
    #
    return args, parser

def main():

    # get arguments
    args, parser = get_args()

    # plot different outcomes
    if args.create_sensetivity_table:
        create_sensetivity_table(x=args.x, y=args.y,
            text_file_name=args.fig_name)

    # general plot
    if args.performance_plot:
        plot(fig_name=args.fig_name, x=args.x, y=args.y, func_only=args.func_only,
         x_max=args.max_steps, loss=args.loss, download_data=args.download_data,
         dataset_name=args.dataset_name, batch_size = args.batch_size,
         use_optimal_stepsize=args.use_optimal_stepsize,
         alter_baselines=args.alter_baselines, eta_schedule=args.eta_schedule)


if __name__ == "__main__":
    main()
