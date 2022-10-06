#!/bin/bash
#SBATCH --account=rrg-kevinlb
#SBATCH --gres=gpu:1
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=5
#SBATCH --time=00-08:00     # time (DD-HH:MM)
#SBATCH --array=0-1000 
cd /home/wilder1/scratch/FunctionalStochasticOptimization
wandb offline
if [ $SLURM_ARRAY_TASK_ID -eq 0 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 3 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 4 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 5 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 6 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 7 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 8 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 9 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 10 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 11 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 12 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 13 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 14 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 15 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 16 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 17 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 18 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 19 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 20 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 21 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 22 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 23 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 24 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 25 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 26 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 27 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 28 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 29 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 30 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 31 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 32 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 33 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 34 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 35 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 36 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 37 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 38 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 39 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 40 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 41 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 42 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 43 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 44 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 45 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 46 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 47 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 48 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 49 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 50 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 51 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 52 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 53 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 54 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 55 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 56 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 57 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 58 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 59 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 60 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 61 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 62 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 63 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 64 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 65 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 66 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 67 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 68 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 69 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 70 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 71 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 72 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 73 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 74 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 75 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 76 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 77 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 78 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 79 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 80 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 81 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 82 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 83 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 84 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 85 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 86 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 87 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 88 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 89 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 90 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 91 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 92 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 93 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 94 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 95 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 96 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 97 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 98 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 99 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 100 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 101 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 102 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 103 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 104 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 105 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 106 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 107 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 108 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 109 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 110 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 111 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 112 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 113 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 114 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 115 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 116 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 117 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 118 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 119 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 120 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 121 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 122 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 123 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 124 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 125 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 126 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 127 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 128 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 129 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 130 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 131 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 132 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 133 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 134 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 135 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 136 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 137 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 138 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 139 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 140 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 141 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 142 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 143 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 144 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 145 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 146 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 147 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 148 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 149 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 150 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 151 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 152 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 153 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 154 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 155 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 156 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 157 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 158 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 159 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 160 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 161 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 162 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 163 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 164 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 165 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 166 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 167 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 168 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 169 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 170 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 171 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 172 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 173 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 174 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 175 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 176 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 177 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 178 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 179 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 180 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 181 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 182 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 183 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 184 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 185 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 186 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 187 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 188 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 189 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 190 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 191 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 192 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 193 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 194 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 195 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 196 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 197 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 198 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 199 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 200 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 201 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 202 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 203 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 204 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 205 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 206 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 207 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 208 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 209 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 210 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 211 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 212 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 213 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 214 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 215 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 216 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 217 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 218 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 219 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 220 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 221 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 222 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 223 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 224 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 225 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 226 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 227 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 228 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 229 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 230 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 231 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 232 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 233 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 234 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 235 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 236 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 237 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 238 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 239 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 240 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 241 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 242 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 243 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 244 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 245 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 246 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 247 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 248 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 249 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 250 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 251 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 252 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 253 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 254 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 255 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 256 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 257 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 258 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 259 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 260 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 261 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 262 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 263 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 264 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 265 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 266 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 267 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 268 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 269 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 270 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 271 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 272 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 273 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 274 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 275 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 276 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 277 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 278 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 279 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 280 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 281 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 282 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 283 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 284 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 285 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 286 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 287 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 288 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 289 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 290 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 291 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 292 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 293 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 294 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 295 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 296 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 297 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 298 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 299 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 300 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 301 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 302 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 303 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 304 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 305 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 306 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 307 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 308 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 309 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 310 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 311 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 312 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 313 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 314 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 315 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 316 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 317 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 318 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 319 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 320 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 321 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 322 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 323 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 324 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 325 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 326 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 327 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 328 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 329 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 330 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 331 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 332 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 333 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 334 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 335 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 336 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 337 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 338 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 339 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 340 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 341 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 342 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 343 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 344 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 345 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 346 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 347 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 348 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 349 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 350 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 351 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 352 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 353 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 354 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 355 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 356 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 357 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 358 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 359 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 360 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 361 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 362 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 363 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 364 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 365 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 366 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 367 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 368 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 369 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 370 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 371 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 372 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 373 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 374 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 375 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 376 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 377 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 378 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 379 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 380 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 381 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 382 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 383 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 384 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 385 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 386 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 387 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 388 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 389 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 390 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 391 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 392 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 393 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 394 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 395 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 396 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 397 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 398 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 399 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 400 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 401 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 402 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 403 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 404 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 405 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 406 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 407 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 408 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 409 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 410 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 411 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 412 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 413 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 414 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 415 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 416 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 417 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 418 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 419 ]
then
    python main.py --min_epochs=500 --algo=Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 420 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 421 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 422 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 423 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 424 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 425 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 426 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 427 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 428 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 429 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 430 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 431 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 432 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 433 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 434 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 435 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 436 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 437 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 438 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 439 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 440 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 441 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 442 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 443 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 444 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 445 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 446 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 447 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 448 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 449 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 450 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 451 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 452 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 453 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 454 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 455 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 456 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 457 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 458 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 459 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 460 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 461 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 462 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 463 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 464 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 465 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 466 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 467 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 468 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 469 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 470 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 471 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 472 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 473 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 474 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 475 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 476 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 477 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 478 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 479 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 480 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 481 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 482 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 483 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 484 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 485 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 486 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 487 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 488 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 489 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 490 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 491 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 492 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 493 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 494 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 495 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 496 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 497 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 498 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 499 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 500 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 501 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 502 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 503 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 504 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 505 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 506 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 507 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 508 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 509 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 510 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 511 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 512 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 513 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 514 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 515 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 516 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 517 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 518 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 519 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 520 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 521 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 522 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 523 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 524 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 525 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 526 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 527 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 528 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 529 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 530 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 531 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 532 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 533 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 534 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 535 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 536 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 537 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 538 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 539 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 540 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 541 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 542 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 543 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 544 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 545 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 546 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 547 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 548 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 549 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 550 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 551 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 552 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 553 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 554 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 555 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 556 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 557 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 558 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 559 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 560 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 561 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 562 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 563 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 564 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 565 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 566 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 567 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 568 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 569 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 570 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 571 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 572 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 573 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 574 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 575 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 576 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 577 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 578 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 579 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 580 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 581 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 582 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 583 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 584 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 585 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 586 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 587 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 588 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 589 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 590 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 591 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 592 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 593 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 594 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 595 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 596 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 597 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 598 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 599 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 600 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 601 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 602 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 603 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 604 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 605 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 606 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 607 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 608 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 609 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 610 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 611 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 612 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 613 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 614 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 615 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 616 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 617 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 618 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 619 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 620 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 621 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 622 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 623 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 624 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 625 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 626 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 627 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 628 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 629 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 630 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 631 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 632 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 633 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 634 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 635 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 636 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 637 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 638 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 639 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 640 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 641 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 642 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 643 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 644 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 645 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 646 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 647 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 648 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 649 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 650 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 651 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 652 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 653 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 654 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 655 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 656 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 657 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 658 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 659 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 660 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 661 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 662 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 663 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 664 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 665 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 666 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 667 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 668 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 669 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 670 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 671 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 672 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 673 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 674 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 675 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 676 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 677 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 678 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 679 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 680 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 681 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 682 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 683 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 684 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 685 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 686 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 687 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 688 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 689 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 690 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 691 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 692 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 693 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 694 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 695 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 696 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 697 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 698 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 699 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 700 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 701 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 702 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 703 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 704 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 705 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 706 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 707 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 708 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 709 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 710 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 711 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 712 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 713 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 714 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 715 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 716 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 717 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 718 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 719 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 720 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 721 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 722 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 723 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 724 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 725 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 726 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 727 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 728 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 729 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 730 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 731 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 732 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 733 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 734 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 735 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 736 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 737 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 738 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 739 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 740 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 741 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 742 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 743 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 744 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 745 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 746 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 747 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 748 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 749 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 750 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 751 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 752 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 753 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 754 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 755 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 756 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 757 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 758 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 759 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 760 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 761 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 762 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 763 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 764 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 765 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 766 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 767 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 768 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 769 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 770 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 771 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 772 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 773 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 774 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 775 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 776 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 777 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 778 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 779 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 780 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 781 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 782 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 783 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 784 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 785 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 786 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 787 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 788 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 789 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 790 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 791 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 792 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 793 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 794 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 795 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 796 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 797 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 798 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 799 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 800 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 801 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 802 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 803 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 804 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 805 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 806 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 807 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 808 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 809 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 810 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 811 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 812 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 813 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 814 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 815 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 816 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 817 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 818 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 819 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 820 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 821 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 822 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 823 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 824 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 825 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 826 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 827 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 828 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 829 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 830 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 831 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 832 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 833 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 834 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 835 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 836 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 837 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 838 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 839 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 840 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 841 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 842 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 843 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 844 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 845 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 846 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 847 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 848 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 849 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 850 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 851 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 852 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 853 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 854 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 855 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 856 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 857 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 858 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 859 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 860 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 861 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 862 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 863 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 864 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 865 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 866 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 867 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 868 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 869 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 870 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 871 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 872 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 873 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 874 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 875 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 876 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 877 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 878 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 879 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 880 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 881 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 882 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 883 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 884 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 885 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 886 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 887 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 888 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 889 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 890 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 891 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 892 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 893 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 894 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 895 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 896 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 897 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 898 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 899 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 900 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 901 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 902 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 903 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 904 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 905 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 906 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 907 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 908 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 909 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 910 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 911 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 912 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 913 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 914 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 915 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 916 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 917 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 918 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 919 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 920 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 921 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 922 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 923 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 924 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 925 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 926 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 927 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 928 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 929 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 930 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 931 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 932 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 933 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 934 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 935 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 936 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 937 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 938 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 939 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 940 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 941 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 942 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 943 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 944 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 945 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 946 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 947 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 948 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 949 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 950 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 951 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 952 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 953 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 954 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 955 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 956 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 957 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 958 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 959 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 960 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 961 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 962 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 963 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 964 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 965 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 966 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 967 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 968 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 969 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 970 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 971 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 972 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 973 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 974 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 975 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 976 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 977 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 978 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 979 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 980 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 981 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 982 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 983 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 984 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 985 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 986 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 987 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 988 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 989 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 990 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 991 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 992 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 993 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 994 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 995 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 996 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 997 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 998 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 999 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1000 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1001 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1002 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1003 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1004 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1005 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1006 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1007 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1008 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1009 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1010 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1011 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1012 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1013 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1014 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1015 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1016 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1017 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1018 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1019 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1020 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1021 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1022 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1023 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1024 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1025 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1026 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1027 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1028 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1029 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1030 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1031 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1032 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1033 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1034 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1035 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1036 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1037 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1038 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1039 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1040 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1041 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1042 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1043 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1044 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1045 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1046 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1047 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1048 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1049 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1050 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1051 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1052 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1053 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1054 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1055 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1056 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1057 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1058 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1059 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1060 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1061 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1062 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1063 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1064 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1065 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1066 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1067 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1068 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1069 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1070 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1071 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1072 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1073 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1074 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1075 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1076 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1077 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1078 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1079 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1080 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1081 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1082 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1083 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1084 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1085 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1086 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1087 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1088 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1089 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1090 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1091 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1092 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1093 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1094 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1095 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1096 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1097 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1098 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1099 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1100 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1101 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1102 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1103 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1104 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1105 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1106 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1107 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1108 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1109 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1110 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1111 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1112 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1113 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1114 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1115 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1116 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1117 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1118 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1119 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1120 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1121 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1122 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1123 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1124 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1125 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1126 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1127 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1128 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1129 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1130 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1131 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1132 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1133 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1134 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1135 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1136 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1137 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1138 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1139 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1140 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1141 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1142 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1143 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1144 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1145 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1146 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1147 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1148 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1149 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1150 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1151 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1152 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1153 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1154 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1155 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1156 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1157 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1158 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1159 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1160 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1161 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1162 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1163 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1164 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1165 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1166 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1167 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1168 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1169 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1170 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1171 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1172 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1173 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1174 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1175 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1176 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1177 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1178 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1179 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1180 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1181 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1182 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1183 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1184 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1185 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1186 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1187 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1188 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1189 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1190 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1191 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1192 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1193 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1194 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1195 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1196 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1197 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1198 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1199 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1200 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1201 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1202 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1203 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1204 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1205 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1206 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1207 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1208 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1209 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1210 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1211 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1212 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1213 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1214 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1215 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1216 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1217 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1218 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1219 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1220 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1221 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1222 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1223 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1224 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1225 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1226 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1227 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1228 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1229 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1230 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1231 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1232 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1233 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1234 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1235 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1236 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1237 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1238 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1239 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1240 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1241 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1242 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1243 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1244 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1245 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1246 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1247 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1248 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1249 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1250 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1251 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1252 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1253 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1254 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1255 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1256 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1257 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1258 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1259 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1260 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1261 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1262 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1263 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1264 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1265 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1266 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1267 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1268 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1269 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1270 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1271 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1272 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1273 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1274 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1275 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1276 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1277 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1278 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1279 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1280 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1281 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1282 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1283 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1284 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1285 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1286 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1287 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1288 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1289 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1290 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1291 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1292 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1293 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1294 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1295 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1296 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1297 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1298 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1299 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1300 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1301 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1302 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1303 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1304 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1305 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1306 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1307 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1308 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1309 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1310 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1311 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1312 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1313 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1314 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1315 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1316 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1317 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1318 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1319 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1320 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1321 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1322 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1323 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1324 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1325 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1326 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1327 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1328 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1329 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1330 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1331 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1332 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1333 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1334 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1335 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1336 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1337 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1338 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1339 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1340 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1341 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1342 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1343 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1344 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1345 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1346 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1347 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1348 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1349 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1350 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1351 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1352 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1353 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1354 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1355 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1356 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1357 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1358 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1359 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1360 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1361 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1362 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1363 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1364 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1365 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1366 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1367 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1368 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1369 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1370 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1371 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1372 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1373 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1374 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1375 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1376 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1377 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1378 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1379 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1380 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1381 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1382 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1383 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1384 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1385 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1386 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1387 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1388 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1389 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1390 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1391 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1392 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1393 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1394 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1395 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1396 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1397 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1398 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1399 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1400 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1401 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1402 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1403 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1404 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1405 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1406 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1407 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1408 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1409 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1410 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1411 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1412 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1413 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1414 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1415 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1416 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1417 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1418 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1419 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1420 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1421 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1422 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1423 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1424 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1425 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1426 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1427 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1428 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1429 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1430 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1431 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1432 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1433 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1434 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1435 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1436 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1437 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1438 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1439 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1440 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1441 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1442 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1443 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1444 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1445 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1446 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1447 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1448 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1449 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1450 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1451 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1452 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1453 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1454 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1455 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1456 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1457 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1458 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1459 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1460 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1461 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1462 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1463 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1464 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1465 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1466 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1467 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1468 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1469 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1470 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1471 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1472 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1473 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1474 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1475 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1476 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1477 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1478 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1479 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1480 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1481 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1482 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1483 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1484 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1485 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1486 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1487 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1488 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1489 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1490 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1491 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1492 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1493 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1494 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1495 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1496 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1497 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1498 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1499 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1500 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1501 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1502 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1503 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1504 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1505 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1506 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1507 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1508 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1509 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1510 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1511 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1512 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1513 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1514 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1515 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1516 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1517 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1518 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1519 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1520 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1521 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1522 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1523 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1524 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1525 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1526 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1527 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1528 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1529 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1530 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1531 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1532 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1533 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1534 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1535 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1536 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1537 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1538 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1539 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1540 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1541 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1542 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1543 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1544 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1545 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1546 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1547 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1548 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1549 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1550 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1551 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1552 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1553 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1554 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1555 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1556 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1557 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1558 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1559 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1560 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1561 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1562 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1563 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1564 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1565 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1566 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1567 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1568 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1569 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1570 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1571 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1572 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1573 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1574 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1575 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1576 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1577 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1578 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1579 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1580 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1581 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1582 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1583 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1584 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1585 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1586 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1587 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1588 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1589 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1590 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1591 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1592 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1593 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1594 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1595 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1596 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1597 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1598 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1599 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1600 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1601 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1602 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1603 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1604 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1605 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1606 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1607 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1608 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1609 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1610 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1611 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1612 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1613 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1614 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1615 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1616 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1617 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1618 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1619 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1620 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1621 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1622 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1623 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1624 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1625 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1626 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1627 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1628 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1629 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1630 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1631 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1632 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1633 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1634 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1635 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1636 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1637 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1638 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1639 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1640 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1641 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1642 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1643 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1644 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1645 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1646 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1647 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1648 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1649 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1650 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1651 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1652 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1653 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1654 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1655 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1656 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1657 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1658 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1659 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1660 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1661 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1662 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1663 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1664 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1665 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1666 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1667 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1668 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1669 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1670 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1671 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1672 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1673 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1674 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1675 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1676 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1677 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1678 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1679 ]
then
    python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=exponential --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1680 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1681 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1682 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1683 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1684 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1685 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1686 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1687 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1688 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1689 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1690 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1691 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1692 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1693 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1694 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1695 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1696 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1697 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1698 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1699 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1700 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1701 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1702 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1703 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1704 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1705 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1706 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1707 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1708 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1709 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1710 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1711 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1712 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1713 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1714 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1715 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1716 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1717 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1718 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1719 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1720 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1721 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1722 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1723 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1724 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1725 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1726 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1727 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1728 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1729 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1730 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1731 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1732 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1733 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1734 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1735 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1736 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1737 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1738 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1739 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1740 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1741 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1742 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1743 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1744 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1745 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1746 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1747 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1748 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1749 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1750 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1751 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1752 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1753 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1754 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1755 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1756 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1757 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1758 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1759 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1760 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1761 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1762 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1763 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1764 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1765 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1766 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1767 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1768 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1769 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1770 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1771 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1772 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1773 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1774 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1775 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1776 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1777 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1778 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1779 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1780 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1781 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1782 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1783 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1784 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1785 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1786 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1787 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1788 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1789 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1790 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1791 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1792 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1793 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1794 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1795 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1796 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1797 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1798 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1799 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1800 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1801 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1802 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1803 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1804 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1805 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1806 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1807 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1808 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1809 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1810 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1811 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1812 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1813 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1814 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1815 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1816 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1817 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1818 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1819 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1820 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1821 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1822 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1823 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1824 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1825 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1826 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1827 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1828 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1829 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1830 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1831 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1832 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1833 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1834 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1835 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1836 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1837 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1838 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1839 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1840 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1841 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1842 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1843 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1844 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1845 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1846 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1847 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1848 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1849 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1850 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1851 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1852 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1853 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1854 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1855 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1856 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1857 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1858 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1859 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1860 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1861 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1862 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1863 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1864 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1865 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1866 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1867 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1868 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1869 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1870 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1871 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1872 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1873 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1874 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1875 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1876 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1877 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1878 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1879 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1880 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1881 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1882 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1883 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1884 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1885 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1886 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1887 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1888 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1889 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1890 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1891 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1892 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1893 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1894 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1895 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1896 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1897 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1898 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1899 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1900 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1901 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1902 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1903 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1904 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1905 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1906 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1907 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1908 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1909 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1910 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1911 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1912 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1913 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1914 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1915 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1916 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1917 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1918 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1919 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1920 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1921 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1922 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1923 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1924 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1925 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1926 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1927 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1928 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1929 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1930 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1931 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1932 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1933 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1934 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1935 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1936 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1937 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1938 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1939 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1940 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1941 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1942 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1943 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1944 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1945 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1946 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1947 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1948 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1949 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1950 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1951 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1952 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1953 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1954 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1955 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1956 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1957 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1958 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1959 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1960 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1961 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1962 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1963 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1964 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1965 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1966 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1967 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1968 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1969 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1970 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1971 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1972 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1973 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1974 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1975 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1976 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1977 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1978 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1979 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1980 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1981 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1982 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1983 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1984 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1985 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1986 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1987 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1988 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1989 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1990 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1991 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1992 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1993 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1994 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=5 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1995 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1996 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1997 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1998 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1999 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2000 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2001 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2002 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2003 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2004 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2005 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2006 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2007 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2008 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2009 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2010 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2011 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2012 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2013 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2014 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2015 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2016 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2017 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2018 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2019 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2020 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2021 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2022 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2023 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2024 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2025 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2026 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2027 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2028 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2029 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=25 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2030 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2031 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2032 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2033 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2034 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2035 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2036 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2037 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2038 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2039 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2040 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2041 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2042 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2043 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2044 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2045 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2046 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2047 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2048 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2049 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2050 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2051 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2052 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2053 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2054 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2055 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2056 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2057 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2058 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2059 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2060 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2061 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2062 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2063 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2064 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=125 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2065 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2066 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2067 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2068 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2069 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2070 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2071 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=1 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2072 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2073 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2074 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2075 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2076 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2077 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2078 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=2 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2079 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2080 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2081 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2082 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2083 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2084 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2085 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=5 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2086 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2087 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2088 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2089 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2090 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2091 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2092 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=10 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2093 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2094 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2095 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=-1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2096 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=0.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2097 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=1.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2098 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=2.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2099 ]
then
    python main.py --min_epochs=500 --algo=Diag_Ada_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --label=workshop-fig7 --batch_size=625 --m=20 --use_optimal_stepsize=0 --log_lr=3.0 --loss=MSELoss --dataset_name=mfac --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml
fi
exit
