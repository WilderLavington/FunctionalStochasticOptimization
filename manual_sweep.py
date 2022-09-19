
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

import yaml
from pathlib import Path
import itertools


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
    return 'python main.py ' + ' '.join(args_list)

def eval_generation(job_name='1', machine='cedar', account='rrg-schmidtm', command='', directory='.', time='00-05:59'):
    # make thhe directory if it does not exist
    Path('eval_dir').mkdir(parents=True, exist_ok=True)
    # set the base runner
    args_list = sys.argv[1:]
    if machine=='borg':
        if account is None:
            account = 'plai'
        file = open('eval_dir/job_'+job_name+'.sh',"w+")
        file.write('#!/bin/sh \n')
        file.write('#SBATCH --partition='+account+' \n')
        file.write('#SBATCH --gres=gpu:1 \n')
        file.write('#SBATCH --mem-per-cpu=4G \n')
        file.write('#SBATCH --cpus-per-gpu=5 \n')
        file.write('#SBATCH --time='+time+'     # time (DD-HH:MM) \n')
        file.write('cd ' + directory + ' \n')
        file.write(command + ' \n')
        file.write('exit')
        file.close()
    elif machine=='ubcml':
        file = open('eval_dir/job_'+job_name+'.sh',"w+")
        file.write('#!/bin/bash \n')
        file.write('#SBATCH --partition=ubcml \n')
        file.write('#SBATCH --gres=gpu:1 \n')
        file.write('#SBATCH --mem-per-cpu=4G \n')
        file.write('#SBATCH --cpus-per-task=5 \n')
        file.write('#SBATCH --time='+time+'     # time (DD-HH:MM) \n')
        file.write('conda activate ubcml \n')
        file.write('cd ' + directory + ' \n')
        file.write(command + ' \n')
        file.write('exit')
        file.close()
    elif machine=='narval':
        file = open('eval_dir/job_'+job_name+'.sh',"w+")
        file.write('#!/bin/bash \n')
        file.write('#SBATCH --account=rrg-kevinlb \n')
        file.write('#SBATCH --gres=gpu:1 \n')
        file.write('#SBATCH --mem-per-cpu=4G \n')
        file.write('#SBATCH --cpus-per-task=5 \n')
        file.write('#SBATCH --time='+time+'     # time (DD-HH:MM) \n')
        file.write('cd ' + directory + ' \n')
        file.write('wandb offline \n')
        file.write(command + ' \n')
        file.write('exit')
        file.close()
    elif machine=='cedar':
        file = open('eval_dir/job_'+job_name+'.sh',"w+")
        file.write('#!/bin/bash \n')
        file.write('#SBATCH --account='+account+'\n')
        file.write('#SBATCH --gres=gpu:1 \n')
        file.write('#SBATCH --mem-per-cpu=4G \n')
        file.write('#SBATCH --cpus-per-task=5 \n')
        file.write('#SBATCH --time='+time+'     # time (DD-HH:MM) \n')
        file.write('cd ' + directory + ' \n')
        file.write('wandb offline \n')
        file.write(command + ' \n')
        file.write('exit')
        file.close()
    else:
        raise Exception
    # create the command
    command = 'sbatch ' + 'eval_dir/job_'+job_name+'.sh'
    # # submit the job
    exit_status = subprocess.call(command, shell=True)
    exit_status = subprocess.call('echo "\nsubmitted:"', shell=True)
    command = 'cat eval_dir/job_'+job_name+'.sh'
    exit_status = subprocess.call(command, shell=True)
    exit_status = subprocess.call('echo "\n"', shell=True)
    # now delete the file
    os.remove('eval_dir/job_'+job_name+'.sh')
    # nothing to return
    return None

def generate_experiments(yaml_file, machine='cedar', account='rrg-schmidtm', directory='.', time='00-05:59'):

    # create list of configs from yaml
    configs = create_config_list(yaml_file)

    # convert configs to command and generate a job
    for idx, config in enumerate(configs):
        command = config2command(config) + ' --group='+machine
        eval_generation(job_name=str(idx), machine=machine, account=account, command=command, directory=directory, time=time)

def main():
    parser = argparse.ArgumentParser(description='job runner')
    parser.add_argument('--directory', default='/home/wilder1/scratch/FunctionalStochasticOptimization')
    parser.add_argument('--machine', default='narval')
    parser.add_argument('--time', default='00-08:00')
    parser.add_argument('--account', default='rrg-kevinlb')
    parser.add_argument('--yaml_file',default='configs/reality_check/funcopt.yaml')
    args = parser.parse_args()
    generate_experiments(args.yaml_file, machine=args.machine, account=args.account,
        directory=args.directory, time=args.time)

if __name__ == "__main__":
    main()
