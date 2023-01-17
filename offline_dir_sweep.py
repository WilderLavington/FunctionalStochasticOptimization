
# general imports
import argparse
import contextlib
import numpy as np
import os
import json
import torch
import matplotlib.pyplot as plt
import csv
from copy import deepcopy
import subprocess
import sys
from pathlib import Path
import time
import psutil
import wandb
import tqdm
api = wandb.Api(timeout=180)
import pandas as pd

# alrighty then
import yaml
from pathlib import Path
import itertools

#
def create_config_list(path):
    with open(path, 'r') as stream:
        try:
            parsed_yaml=yaml.safe_load(stream)
        except yaml.YAMLError as exc:
            print(exc)
    params = parsed_yaml['parameters']
    expanded_list = []
    for key in params.keys():
        expanded_list.append([{key:v} for v in params[key]['values']])
    expanded_conf = [x for x in itertools.product(*expanded_list)]
    for idx, conf in enumerate(expanded_conf):
        expanded_conf[idx] = {k: v for d in conf for k, v in d.items()}
    return expanded_conf

def config2command(config):
    args_list = []
    for key, val in config.items():
        args_list.append("--{0}={1}".format(key, val))
    if config['label'] == 'aistats-atari':
        return 'python atari/atari_ex.py ' + ' '.join(args_list)
    if config['label'] == 'aistats-mujoco':
        return 'python mujoco/mujoco_ex.py ' + ' '.join(args_list)
    else:
        return 'python main.py ' + ' '.join(args_list)

def get_incomplete_configs(full_config, project, user='wilderlavington'):
    runs = api.runs(user+'/'+project, per_page=1e7)
    summary_list, config_list, name_list, id_list, commits = [], [], [], [], []
    status = []
    assert len([run for run in runs])
    for run in runs:
        run = api.run(user+'/'+project+"/"+run.id)
        conf = {k: v for k, v in run.config.items()}
        summary_list.append(run.summary._json_dict)
        config_list.append(conf)
        name_list.append(run.name)
        id_list.append(run.id)
        if run.commit is not None:
            commits.append(run.commit)
        else:
            commits.append('None')
        status.append(run.state)
        if len(id_list) > 10:
            break
    assert len(summary_list)
    status_df =  pd.DataFrame(status, columns =['status'])
    commits_df = pd.DataFrame(commits, columns =['commits'])
    summary_df = pd.DataFrame.from_records(summary_list)
    config_df = pd.DataFrame.from_records(config_list)
    name_df = pd.DataFrame({"name": name_list, "id": id_list})
    all_df = pd.concat([name_df, config_df, summary_df, commits_df, status_df], axis=1)
    config_list = config_df.to_dict(orient='records')
    complete_jobs = [1 if state == 'finished' else 0 for state in status]
    configsrun = [conf for idx, conf in enumerate(config_list) if complete_jobs[idx] == 1]
    remaining_config = [conf for conf in full_config if conf not in configsrun]
    print('this job is {}% complete'.format(round(len(remaining_config)/len(full_config),2)))
    return remaining_config

def eval_generation(job_name='1', machine='cedar', account='rrg-schmidtm', commands=[], time='00-05:59', log_dir='./wandb'):
    # make thhe directory if it does not exist
    Path('sbatch_scripts').mkdir(parents=True, exist_ok=True)
    # set the base runner
    args_list = sys.argv[1:]
    if machine=='borg':
        directory = '/ubc/cs/research/plai-scratch/wlaving'
        account = 'plai'
        file = open('sbatch_scripts/job_'+job_name+'.sh',"w+")
        file.write('#!/bin/sh \n')
        file.write('#SBATCH --partition='+account+' \n')
        file.write('#SBATCH --gres=gpu:1 \n')
        file.write('#SBATCH --mem-per-cpu=4G \n')
        file.write('#SBATCH --cpus-per-gpu=5 \n')
        file.write('#SBATCH --time='+time+'     # time (DD-HH:MM) \n')
        file.write('#SBATCH --array=0-'+str(len(commands))+'%16 \n')
        file.write('cd ' + directory + ' \n')
        ##
        for idx, command in enumerate(commands):
            file.write('if [ $SLURM_ARRAY_TASK_ID -eq '+str(idx)+' ] \n')
            file.write('then \n')
            file.write('    ' + command +' --log_dir='+log_dir+' \n')
            file.write('fi \n')
        file.write('exit')
        file.close()
    elif machine=='ubcml':
        account = 'ubcml'
        directory = '/ubc/cs/research/plai-scratch/wlaving'
        file = open('sbatch_scripts/job_'+job_name+'.sh',"w+")
        file.write('#!/bin/bash \n')
        file.write('#SBATCH --partition=ubcml \n')
        file.write('#SBATCH --gres=gpu:1 \n')
        file.write('#SBATCH --mem-per-cpu=4G \n')
        file.write('#SBATCH --cpus-per-task=5 \n')
        file.write('#SBATCH --time='+time+'     # time (DD-HH:MM) \n')
        file.write('#SBATCH --array=0-'+str(len(commands))+'%24 \n')
        file.write('conda activate ubcml \n')
        file.write('cd ' + directory + ' \n')
        ##
        for idx, command in enumerate(commands):
            file.write('if [ $SLURM_ARRAY_TASK_ID -eq '+str(idx)+' ] \n')
            file.write('then \n')
            file.write('    ' + command +' --log_dir='+log_dir+' \n')
            file.write('fi \n')
        file.write('exit')
        file.close()
    elif machine=='narval':
        directory = '/home/wilder1/scratch/FunctionalStochasticOptimization'
        file = open('sbatch_scripts/job_'+job_name+'.sh',"w+")
        file.write('#!/bin/bash \n')
        file.write('#SBATCH --account=rrg-kevinlb \n')
        file.write('#SBATCH --gres=gpu:1 \n')
        file.write('#SBATCH --mem-per-cpu=4G \n')
        file.write('#SBATCH --cpus-per-task=5 \n')
        file.write('#SBATCH --time='+time+'     # time (DD-HH:MM) \n')
        file.write('#SBATCH --array=0-'+str(len(commands))+' \n')
        file.write('cd ' + directory + ' \n')
        file.write('wandb offline \n')
        ##
        for idx, command in enumerate(commands):
            file.write('if [ $SLURM_ARRAY_TASK_ID -eq '+str(idx)+' ] \n')
            file.write('then \n')
            file.write('    ' + command +' --log_dir='+log_dir+' \n')
            file.write('fi \n')
        file.write('exit')
        file.close()
    elif machine=='cedar':
        directory = '/home/wilder1/scratch/FunctionalStochasticOptimization'
        file = open('sbatch_scripts/job_'+job_name+'.sh',"w+")
        file.write('#!/bin/bash \n')
        file.write('#SBATCH --account='+account+'\n')
        file.write('#SBATCH --gres=gpu:1 \n')
        file.write('#SBATCH --mem-per-cpu=4G \n')
        file.write('#SBATCH --cpus-per-task=5 \n')
        file.write('#SBATCH --time='+time+'     # time (DD-HH:MM) \n')
        file.write('#SBATCH --array=0-'+str(len(commands))+' \n')
        file.write('cd ' + directory + ' \n')
        file.write('wandb offline \n')
        ##
        for idx, command in enumerate(commands):
            file.write('if [ $SLURM_ARRAY_TASK_ID -eq '+str(idx)+' ] \n')
            file.write('then \n')
            file.write('    ' + command +' --log_dir='+log_dir+' \n')
            file.write('fi \n')
        file.write('exit')
        file.close()
    else:
        raise Exception
    # create the command
    command = 'sbatch ' + 'sbatch_scripts/job_'+job_name+'.sh'
    # # submit the job
    exit_status = subprocess.call(command, shell=True)
    exit_status = subprocess.call('echo "\nsubmitted:"', shell=True)
    command = 'cat sbatch_scripts/job_'+job_name+'.sh'
    exit_status = subprocess.call(command, shell=True)
    exit_status = subprocess.call('echo "\n"', shell=True)
    # nothing to return
    return None

def args_check(args_dict):
    check = True
    if args_dict['algo'] in ['Sadagrad', 'Ada_FMDOpt', 'Diag_Ada_FMDOpt', 'Adam', 'Adagrad']:
        check = check and (args_dict['eta_schedule'] == 'constant')
    return check

def divide_chunks(l, n):
    for i in range(0, len(l), n):
        yield l[i:i + n]

def generate_experiments(yaml_file, job_name='job-ex', machine='cedar',
            account='rrg-schmidtm', directory='.', time='00-05:59', \
            project='TargetBasedSurrogateOptimization'):
    # create list of configs from yaml
    configs = create_config_list(yaml_file)
    configs = get_incomplete_configs(configs, project=project)
    commands = []
    # convert configs to command and generate a job
    for idx, config in enumerate(configs):
        if args_check(config):
            commands.append(config2command(config) + ' --group=AIstats_'+machine)
    # split configs if there are more then 999 of them
    seperated_configs = divide_chunks(commands, 999)
    for idx, sep_conf in enumerate(seperated_configs):
        if len(sep_conf):
            eval_generation(job_name=job_name+'-'+str(len(commands))+'-'+str(idx), machine=machine,
                account=account, commands=sep_conf, time=time, log_dir='./wandb'+yaml_file)

def main():
    parser = argparse.ArgumentParser(description='job runner')
    parser.add_argument('--machine', default='narval')
    parser.add_argument('--time', default='00-08:00')
    parser.add_argument('--account', default='rrg-kevinlb')
    parser.add_argument('--job_name', default='func-opt-jobs')
    parser.add_argument('--yaml_file',default='configs/reality_check/funcopt.yaml')
    parser.add_argument('--wandb_proj',default='TargetBasedSurrogateOptimization')
    args = parser.parse_args()
    generate_experiments(args.yaml_file, job_name=args.job_name,
        machine=args.machine, account=args.account,
        time=args.time, project=args.wandb_proj)


if __name__ == "__main__":
    main()
