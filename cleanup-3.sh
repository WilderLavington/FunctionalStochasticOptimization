#!/bin/bash
#SBATCH --account=ubcml
#SBATCH --gres=gpu:1
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=5
#SBATCH --time=00-08:00     # time (DD-HH:MM)
#SBATCH --array=0-15
cd /ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization
pwd
conda activate ubcml
if [ $SLURM_ARRAY_TASK_ID -eq 0 ]
then
    python main.py --min_epochs=500 --algo=SGD --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1 ]
then
    python main.py --min_epochs=500 --algo=Adam --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1 ]
then
    python main.py --min_epochs=500 --algo=Sadagrad --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
exit