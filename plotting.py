from tqdm import tqdm
from tqdm.notebook import tqdm
import wandb
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

def load_csv():
    return pd.read_csv(SUMMARY_FILE+'.csv', header=0, squeeze=True)

def download_all_runs_summary():
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
    all_df.to_csv(SUMMARY_FILE)

def create_dataset():
    # create structured dict of good params
    best_config_loc = {}
    for example in tqdm(config_setups):
        best_config_loc[str(example)] = {}
        # create filtered df
        filtered_df = deepcopy(runs_df)
        filtered_df = filtered_df.loc[filtered_df['env_name'] == example[0]]
        filtered_df = filtered_df.loc[filtered_df['beta_update'] == example[1]]
        filtered_df = filtered_df.loc[filtered_df['samples_per_update'] == example[2]]
        filtered_df = filtered_df.loc[filtered_df['loss_type'] == example[3]]
        filtered_df = filtered_df.loc[filtered_df['model_type'] == example[4]]
        filtered_df = filtered_df.loc[filtered_df['algo'] == example[5]]
        filtered_df = filtered_df.loc[filtered_df['total_examples_mean'] >= REQ_EXAMPLES]

        # check its not empty
        while len(filtered_df) > 0:


                # iterate through all stats and rows while orginizing
                for i, row in run.history().iterrows():
                    if info_key not in row.keys():
                        break
                    # store different stats
                    for sub_stat in ['_05_quant', '_95_quant', '_mean', '_min', '_max']:
                        info_key.replace(sub_stat,'')
                        if info_key.replace(sub_stat,'') not in best_config_loc[str(example)].keys():
                            best_config_loc[str(example)][info_key.replace(sub_stat,'')] = {}
                        if sub_stat not in best_config_loc[str(example)][info_key.replace(sub_stat,'')].keys():
                            best_config_loc[str(example)][info_key.replace(sub_stat,'')][sub_stat]=[]
                        if sub_stat in info_key:
                            best_config_loc[str(example)][info_key.replace(sub_stat,'')][sub_stat].append(row[info_key])
                # add in id just in case
                best_config_loc[str(example)]['id'] = runs_df.loc[min_idx,:]['id']
                #
                best_config_loc[str(example)]['updates'] = []
                best_config_loc[str(example)]['total_examples'] = []
                for i, row in run.history().iterrows():
                    best_config_loc[str(example)]['updates'].append(row['update_mean'])
                    best_config_loc[str(example)]['total_examples'].append(row['total_examples_mean'])
                break
            except:
                filtered_df.drop(best_id)

    # save it
    torch.save(best_config_loc, BASE_FOLDER+SUMMARY_FILE+'.pt')
