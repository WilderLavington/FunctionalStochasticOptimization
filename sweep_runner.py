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
            command='', directory='.', time='00-05:59'):
    # make thhe directory if it does not exist
    Path('eval_dir').mkdir(parents=True, exist_ok=True)
    # set the base runner
    args_list = sys.argv[1:]
    if machine=='borg':
        # set account for borg cluster
        if account is None:
            account = 'plai'
        # set account for borg cluster
        file = open('eval_dir/job_'+job_name+'.sh',"w+")
        file.write('#!/bin/sh \n')
        file.write('#SBATCH --partition='+account+' \n')
        file.write('#SBATCH --gres=gpu:1 \n')
        file.write('#SBATCH --cpus-per-gpu=5 \n')
        file.write('#SBATCH --time='+time+'     # time (DD-HH:MM) \n')
        file.write('cd ' + directory + ' \n')
        file.write(command + ' \n')
        file.write('exit')
        file.close()
    elif machine=='ubcml':
        # set account for borg cluster
        if account is None:
            account = 'ubcml'
        # set account for borg cluster
        file = open('eval_dir/job_'+job_name+'.sh',"w+")
        file.write('#!/bin/bash \n')
        file.write('#SBATCH --partition='+account+' \n')
        file.write('#SBATCH --gres=gpu:1 \n')
        file.write('#SBATCH --mem-per-cpu=4G \n')
        file.write('#SBATCH --cpus-per-task=6 \n')
        file.write('#SBATCH --time='+time+'     # time (DD-HH:MM) \n')
        file.write('conda activate ubcml \n')
        file.write('cd ' + directory + ' \n')
        file.write(command + ' \n')
        file.write('exit')
        file.close()
    else:
        #
        if account is None:
            account = 'rrg-kevinlb'
        elif account in ['rrg-kevinlb', 'def-fwood', 'rrg-schmidtm', 'def-schmidtm']:
            pass
        else:
            raise Exception

        command = 'wandb agent --count 1 ' + command
        #
        file = open('eval_dir/job_'+job_name+'.sh',"w+")
        file.write('#!/bin/sh \n')
        file.write('#SBATCH --account='+account+' \n')
        file.write('#SBATCH --mem-per-cpu=4G \n')
        file.write('#SBATCH --cpus-per-task=4 \n')
        file.write('#SBATCH --time='+time+'     # time (DD-HH:MM) \n')
        file.write('#SBATCH --gres=gpu:1 \n')
        file.write('source ~/sac/bin/activate \n')
        file.write('export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/nickioan/.mujoco/mujoco210/bin \n')
        file.write('cd ' + directory + ' \n')
        file.write(command + ' \n')
        file.write('exit')
        file.close()
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
    parser.add_argument('--directory', default='~/scratch/Alpha-Dependent-SAC/')
    parser.add_argument('--command', default='echo "hello world" ')
    parser.add_argument('--machine', default='cedar')
    parser.add_argument('--time', default='00-08:00')
    parser.add_argument('--account', default='rrg-schmidtm')
    parser.add_argument('--num',default='1')
    args = parser.parse_args()
    for i in range(int(args.num)):
        job_id = str(i)
        eval_generation(machine=args.machine, command=args.command, account=args.account,
            directory=args.directory, job_name=job_id, time=args.time)

if __name__ == "__main__":
    main()
