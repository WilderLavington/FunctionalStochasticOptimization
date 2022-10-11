#!/bin/bash 
#SBATCH --account=rrg-kevinlb 
#SBATCH --gres=gpu:1 
#SBATCH --mem-per-cpu=4G 
#SBATCH --cpus-per-task=5 
#SBATCH --time=00-08:00     # time (DD-HH:MM) 
#SBATCH --array=0-12 
cd /home/wilder1/scratch/FunctionalStochasticOptimization 
wandb offline 
if [ $SLURM_ARRAY_TASK_ID -eq 0 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --seed=1 --m=100 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 1 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --seed=2 --m=100 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 2 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --seed=3 --m=100 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 3 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --seed=1 --m=100 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 4 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --seed=2 --m=100 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 5 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --seed=3 --m=100 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 6 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --seed=1 --m=100 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 7 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --seed=2 --m=100 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 8 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --seed=3 --m=100 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 9 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --seed=1 --m=100 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 10 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --seed=2 --m=100 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 11 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --seed=3 --m=100 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/funcopt.yaml 
fi 
exit