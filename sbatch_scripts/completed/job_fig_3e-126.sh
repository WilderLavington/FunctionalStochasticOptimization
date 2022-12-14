#!/bin/bash 
#SBATCH --account=def-fwood
#SBATCH --gres=gpu:1
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=5
#SBATCH --time=00-08:00     # time (DD-HH:MM)
#SBATCH --array=0-126
cd /home/wilder1/scratch/FunctionalStochasticOptimization
wandb offline
if [ $SLURM_ARRAY_TASK_ID -eq 0 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 3 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 4 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 5 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 6 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 7 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 8 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 9 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 10 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 11 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 12 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 13 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 14 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 15 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 16 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 17 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 18 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 19 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 20 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 21 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 22 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 23 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 24 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 25 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 26 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 27 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 28 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 29 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 30 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 31 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 32 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 33 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 34 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 35 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 36 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 37 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 38 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 39 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 40 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 41 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 42 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 43 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 44 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 45 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 46 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 47 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 48 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 49 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 50 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 51 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 52 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 53 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 54 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 55 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 56 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 57 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 58 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 59 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 60 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 61 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 62 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 63 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 64 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 65 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 66 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 67 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 68 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 69 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 70 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 71 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 72 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 73 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 74 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 75 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 76 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 77 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 78 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 79 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 80 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 81 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 82 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 83 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 84 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 85 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 86 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 87 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 88 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 89 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 90 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 91 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 92 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 93 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 94 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 95 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 96 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 97 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 98 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 99 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 100 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 101 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=-1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 102 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 103 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 104 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 105 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 106 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 107 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=0.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 108 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 109 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 110 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 111 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 112 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 113 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=1.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 114 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 115 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 116 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 117 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 118 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 119 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=2.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 120 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 121 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 122 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 123 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 124 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 125 ]
then
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=0 --log_lr=3.0 --label=svmlib --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/gridsearch/stochastic/fullbatch/baselines.yaml
fi
exit
