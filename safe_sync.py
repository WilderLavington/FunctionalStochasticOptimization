# general imports
import argparse
import os
import subprocess
from pathlib import Path

import argparse

def get_args():
    # grab parse.
    parser = argparse.ArgumentParser(description='PyTorch Soft Actor-Critic Args')
    # optimization args
    parser.add_argument('--wandb_dir', type=str, default='wandb')
    return parser.parse_known_args()

def sync_wandb(wandb_dir):
    # get all yaml files in a directory
    yaml_files = [] 
    for subdir, dirs, files in os.walk(wandb_dir):
        for file in files:
            filename = os.path.join(subdir, file)
            if "offline-run" in filename:
                filename = filename.split('/')[:-1]
                idx = [idx for idx in range(len(filename)) if "offline-run" in filename[idx] ][-1]
                filename = '/'.join(filename[:idx+1])
                yaml_files.append(filename)
            else:
                continue
    print(yaml_files)
    for file in yaml_files:
        command = 'wandb sync ./'+file+ ' --id offlinerun_'+file.split('_')[-1]
        print(command)
        exit_status = subprocess.call(command, shell=True)

def main():

    # get arguments
    args, parser = get_args()
    sync_wandb(args.wandb_dir)

if __name__ == "__main__":
    main()
