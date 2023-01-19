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

def eval_generation(job_name='1', machine='cedar', account='rrg-schmidtm',
            command='',  time='00-05:59'):
    # make thhe directory if it does not exist
    Path('eval_dir').mkdir(parents=True, exist_ok=True)
    # set the base runner
    args_list = sys.argv[1:]
    if machine=='borg':
        if account is None:
            account = 'plai'
        directory='/home/wilder1/scratch/FunctionalStochasticOptimization'
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
        directory='/home/wilder1/scratch/FunctionalStochasticOptimization'
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
        directory='/home/wilder1/scratch/FunctionalStochasticOptimization'
        file = open('eval_dir/job_'+job_name+'.sh',"w+")
        file.write('#!/bin/bash \n')
        file.write('#SBATCH --account=rrg-kevinlb \n')
        file.write('#SBATCH --gres=gpu:1 \n')
        file.write('#SBATCH --mem-per-cpu=4G \n')
        file.write('#SBATCH --cpus-per-task=5 \n')
        file.write('#SBATCH --time='+time+'     # time (DD-HH:MM) \n')
        file.write('cd ' + directory + ' \n')
        file.write(command + ' \n')
        file.write('exit')
        file.close()
    elif machine=='cedar':
        directory='/home/wilder1/scratch/FunctionalStochasticOptimization'
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

def main():
    parser = argparse.ArgumentParser(description='job runner')
    parser.add_argument('--command', default='echo "hello world" ')
    parser.add_argument('--machine', default='narval')
    parser.add_argument('--time', default='00-12:00')
    parser.add_argument('--account', default='rrg-kevinlb')
    parser.add_argument('--num',default='1')
    args = parser.parse_args()
    for i in range(int(args.num)):
        job_id = str(i)
        eval_generation(machine=args.machine, command=args.command, account=args.account,
            job_name=job_id, time=args.time)

if __name__ == "__main__":
    main()
