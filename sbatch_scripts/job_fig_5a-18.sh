#!/bin/bash 
#SBATCH --account=rrg-kevinlb 
#SBATCH --gres=gpu:1 
#SBATCH --mem-per-cpu=4G 
#SBATCH --cpus-per-task=5 
#SBATCH --time=00-08:00     # time (DD-HH:MM) 
#SBATCH --array=0-18 
cd /home/wilder1/scratch/FunctionalStochasticOptimization 
wandb offline 
if [ $SLURM_ARRAY_TASK_ID -eq 0 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 1 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 2 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 3 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 4 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 5 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 6 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 7 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 8 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 9 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 10 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 11 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 12 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=MSELoss --dataset_name=mushrooms --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 13 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=MSELoss --dataset_name=ijcnn --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 14 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 15 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 16 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 17 ] 
then 
    python main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --label=workshop-fig1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml 
fi 
exit