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
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import itertools
import time
import matplotlib as mpl
import matplotlib.ticker as ticker
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
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import itertools
import time
import matplotlib as mpl
import matplotlib.ticker as ticker
SUMMARY_FILE = "/home/wlavington/Desktop/FunctionalStochasticOptimization/plotting/logs/wandb_data/__full__FuncOptSVMlib.csv"
def format_dataframe(
    records,
    id_subfields={},
    avg_subfields=["seed"],
    max_subfields=["log_lr", "c"],
    x_col="optim_steps",
    y_col="avg_loss",
    k=1,
):
    #
    pd.set_option("display.max_columns", None)
    max_subfields = [m for m in max_subfields if m not in id_subfields.keys()]
    for key in id_subfields:
        records = records.loc[records[key] == id_subfields[key]]
    records["function_evals+grad_evals"] = (
        records["function_evals"] + records["grad_evals"]
    )
    if not len(records):
        return None
    # remove nans
    records = records[records[y_col].notna()]
    important_cols = list(
        set(
            avg_subfields
            + max_subfields
            + list(id_subfields.keys())
            + [x_col, y_col, "optim_steps"]
        )
    )
    # remove redundant information
    records = records[important_cols]
    # average over avg_subfields
    records = records.drop(avg_subfields, axis=1)
    # group over averaging field
    gb = list(
        set(list(max_subfields + list(id_subfields.keys()) + [x_col, "optim_steps"]))
    )
    # only look at final optim steps
    last_mean_records = records.loc[
        records["optim_steps"] == records["optim_steps"].max()
    ]
    # get the best record
    best_record = last_mean_records[
        last_mean_records[y_col] == last_mean_records[y_col].min()
    ]
    # find parameters of the best record
    merge_on = list(set(gb) - set(["optim_steps", x_col, y_col]))
    merge_on = [x for x in merge_on if x in best_record.columns.values]
    best_records = pd.merge(best_record[merge_on], records, on=merge_on, how="left")
    final_records = best_records.groupby(merge_on + [x_col], as_index=False)[
        y_col
    ].mean()
    final_records[y_col + "25"] = best_records.groupby(
        merge_on + [x_col], as_index=False
    )[y_col].quantile(0.25)[y_col]
    final_records[y_col + "75"] = best_records.groupby(
        merge_on + [x_col], as_index=False
    )[y_col].quantile(0.75)[y_col]
    final_records = final_records.sort_values(
        x_col,
        axis=0,
        ascending=True,
        inplace=False,
        kind="quicksort",
        na_position="last",
    )
    # smooth outputs
    final_records[y_col + "75"] = smooth(final_records[y_col + "75"], k)
    final_records[y_col + "25"] = smooth(final_records[y_col + "25"], k)
    final_records[y_col] = smooth(final_records[y_col], k)
    # return
    return final_records
def generate_plot(
    proc_df, x, y, ax, label, linestyle="solid", color=None, x_max=1000000
):
    low_order_idx = (torch.tensor(proc_df[x].values) < x_max).nonzero().reshape(-1)
    if label:
        ax.plot(
            torch.tensor(proc_df[x].values[low_order_idx]),
            torch.tensor(proc_df[y].values[low_order_idx]),
            label=label,
            linestyle=linestyle,
            color=color,
            alpha=0.8,
            linewidth=4,
        )
    else:
        ax.plot(
            torch.tensor(proc_df[x].values[low_order_idx]),
            torch.tensor(proc_df[y].values[low_order_idx]),
            label="_nolegend_",
            linestyle=linestyle,
            color=color,
            alpha=0.8,
            linewidth=4,
        )
    ax.fill_between(
        torch.tensor(proc_df[x].values)[low_order_idx],
        torch.tensor(proc_df[y + "75"].values)[low_order_idx],
        torch.tensor(proc_df[y + "25"].values)[low_order_idx],
        alpha=0.4,
        label="_nolegend_",
        linestyle=linestyle,
        color=color,
    )
    return ax
def smooth(array, k):
    array = np.array(array)
    new_array = deepcopy(array)
    # print(array[max(0,i-k):i] )
    for i in range(len(array)):
        if str(array[i]) != "nan":
            avg_list = [
                val for val in array[max(0, i - k) : i + 1] if str(val) != "nan"
            ]
            new_array[i] = sum(avg_list) / len(avg_list)
    return new_array
def generate_stoch_figure(wandb_records, fig_name, x="optim_steps", y="avg_loss"):
    # base info
    dataset_name = "ijcnn"  # , 'ijcnn', 'rcv1'
    m = [1, 5, 10, 20]
    sso_variants = ["SLS_FMDOpt", "Ada_FMDOpt"]  #'Online_Newton_FMDOpt' 'SGD_FMDOpt',
    loss = "MSELoss"
    schedule = "constant"
    #     wandb_records = wandb_records[wandb_records['group']=='AIstats_narval']
    # init plots
    fig, axs = plt.subplots(1, 2, figsize=(10, 2))
    axs = [axs]
    colors = mpl.cm.Set1.colors  # Qualitative colormap
    colormap = {"SGD": "#44AA99", "SLS": "#DDCC77", "Adagrad": "#88CCEE"}
    colormap.update(
        {
            "SSO-1": "#CC6677",
            "SSO-5": "#AA4499",
            "SSO-10": "#882255",
            "SSO-20": "#332288",
        }
    )
    algorithms = ["Adagrad", "SLS"] + ["SSO-" + str(m_) for m_ in m]
    label_map = {x: "Optimization-Steps", y: "Gradient-Norm"}
    algo_mask = {
        "SGD_FMDOpt": "SSO-SGD",
        "SLS_FMDOpt": "SSO-SLS",
        "Ada_FMDOpt": "SSO-Adagrad",
        "Online_Newton_FMDOpt": "SSO-Newton",
    }
    # now add in the lines to each of the plots
    for col, sso_variant in enumerate(sso_variants):
        row = min(int(np.floor(col / 2)), 1)
        col = col % 2
        # figure out axis automatically
        x_max = 0
        # SLS
        if sso_variant =='SLS_FMDOpt':
            proc_df = format_dataframe(
                wandb_records,
                id_subfields={
                    "fullbatch": 0,
                    "batch_size": 5,
                    "use_optimal_stepsize": 1,
                    "loss": loss,
                    "algo": "LSOpt",
                    "eta_schedule": schedule,
                    "dataset_name": dataset_name,
                },
                x_col=x,
                y_col=y,
                k=3,
            )
            if proc_df is not None:
                x_max = max(proc_df[x].values.max(), x_max)
                axs[row][col] = generate_plot(
                    proc_df,
                    x,
                    y,
                    axs[row][col],
                    label="SLS",
                    linestyle="dashed",
                    color=colormap["SLS"],
                )
            else:
                print("missing SLS  ", dataset_name, "full-batch")
        # Adagrad
        if sso_variant =='Ada_FMDOpt':
            proc_df = format_dataframe(
                wandb_records,
                id_subfields={
                    "fullbatch": 0,
                    "batch_size": 5,
                    "use_optimal_stepsize": 1,
                    "loss": loss,
                    "algo": "Adagrad",
                    "eta_schedule": "constant",
                    "dataset_name": dataset_name,
                },
                x_col=x,
                y_col=y,
                k=2,
            )
            if proc_df is not None:
                x_max = max(proc_df[x].values.max(), x_max)
                axs[row][col] = generate_plot(
                    proc_df,
                    x,
                    y,
                    axs[row][col],
                    label="Adagrad",
                    linestyle="dashed",
                    color=colormap["Adagrad"],
                )
            else:
                print("missing Adagrad  ", dataset_name, "full-batch")
        # FMDopt theoretical
        for m_ in m:
            # create parsed info
            proc_df = format_dataframe(
                wandb_records,
                id_subfields={
                    "fullbatch": 0,
                    "batch_size": 5,
                    "use_optimal_stepsize": 1,
                    "loss": loss,
                    "algo": sso_variant,
                    "m": m_,
                    "eta_schedule": schedule,
                    "dataset_name": dataset_name,
                },
                avg_subfields=["seed"],
                max_subfields=["c"],
                x_col=x,
                y_col=y,
                k=3,
            )
            if proc_df is not None:
                x_max = max(proc_df[x].values.max(), x_max)
                axs[row][col] = generate_plot(
                    proc_df,
                    x,
                    y,
                    axs[row][col],
                    label="SSO-" + str(m_),
                    linestyle="solid",
                    color=colormap["SSO-" + str(m_)],
                )
            else:
                print(
                    "missing " + sso_variant + "FMDopt  ",
                    m_,
                    dataset_name,
                    "full-batch",
                )
        axs[row][col].grid()
        axs[row][col].set_yscale("log")
        axs[row][col].set_xscale("log")
    #     remaining format stuff
    # handles = [mpatches.Patch(color=colormap[algo], label=algo) for algo in algorithms]
    # leg = fig.legend(
    #     handles=handles,
    #     loc="lower center",  # Position of legend
    #     borderaxespad=1.25,  # Small spacing around legend box
    #     # title="Algorithms",  # Title for the legend
    #     fontsize=14,
    #     ncol=8,
    #     bbox_to_anchor=(0.525, -0.205),
    # )
    #     axs[0][0].set_xticklabels([10**1, 10**2, 10**3, 10**4, 10**5, 10**6])
    #     axs[0][1].set_xticklabels([10**1, 10**2, 10**3, 10**4, 10**5, 10**6])
    plt.subplots_adjust(hspace=1.25)
    plt.rcParams["figure.dpi"] = 100  # 400
    fig.tight_layout()
    # show / save
    plt.savefig(
        "plotting/plots/aistats/workshop-plot-algo-compare-" + fig_name + loss + ".pdf",
        bbox_inches="tight",
    )
    plt.show()
def main():
    wandb_records = pd.read_csv(SUMMARY_FILE, header=0, squeeze=True)
    generate_stoch_figure(
        wandb_records, fig_name="other-optim-stoch", x="optim_steps", y="avg_loss"
    )
if __name__ == "__main__":
    main()
