#!/bin/bash 
#SBATCH --account=rrg-kevinlb 
#SBATCH --gres=gpu:1 
#SBATCH --mem-per-cpu=4G 
#SBATCH --cpus-per-task=5 
#SBATCH --time=00-08:00     # time (DD-HH:MM) 
#SBATCH --array=0-72 
cd /home/wilder1/scratch/FunctionalStochasticOptimization 
wandb offline 
if [ $SLURM_ARRAY_TASK_ID -eq 0 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 1 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 2 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 3 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 4 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 5 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 6 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 7 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 8 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 9 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 10 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 11 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 12 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 13 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 14 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 15 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 16 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 17 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 18 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 19 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 20 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 21 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 22 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 23 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 24 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 25 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 26 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 27 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 28 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 29 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 30 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 31 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 32 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 33 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 34 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 35 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 36 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 37 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 38 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 39 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 40 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 41 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 42 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 43 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 44 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 45 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 46 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 47 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 48 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 49 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 50 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 51 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 52 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 53 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 54 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 55 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 56 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 57 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 58 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 59 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 60 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 61 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 62 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 63 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 64 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 65 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 66 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 67 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 68 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 69 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 70 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 71 ] 
then 
    python main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=stochastic --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml 
fi 
exit