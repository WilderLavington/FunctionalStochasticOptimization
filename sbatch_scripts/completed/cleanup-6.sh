#!/bin/bash
#SBATCH --account=ubcml
#SBATCH --gres=gpu:1
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=5
#SBATCH --time=00-08:00     # time (DD-HH:MM)
#SBATCH --array=0-14
cd /ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization
pwd
conda activate ubcml
if [ $SLURM_ARRAY_TASK_ID -eq 0 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 3 ]
then
    python main.py --min_epochs=500 --algo=SGD --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 4 ]
then
    python main.py --min_epochs=500 --algo=SGD --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 5 ]
then
    python main.py --min_epochs=500 --algo=SGD --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 6 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=exponential --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 7 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=exponential --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 8 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=exponential --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 9 ]
then
    python main.py --min_epochs=500 --algo=SGD --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=exponential --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 10 ]
then
    python main.py --min_epochs=500 --algo=SGD --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=exponential --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 11 ]
then
    python main.py --min_epochs=500 --algo=SGD --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=exponential --group=narval
fi
exit