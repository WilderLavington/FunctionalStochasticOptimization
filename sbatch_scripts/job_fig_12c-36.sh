#!/bin/bash 
#SBATCH --account=rrg-kevinlb 
#SBATCH --gres=gpu:1 
#SBATCH --mem-per-cpu=4G 
#SBATCH --cpus-per-task=5 
#SBATCH --time=00-08:00     # time (DD-HH:MM) 
#SBATCH --array=0-36 
cd /home/wilder1/scratch/FunctionalStochasticOptimization 
wandb offline 
if [ $SLURM_ARRAY_TASK_ID -eq 0 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --m=1 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 1 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --m=10 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 2 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --m=1000 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 3 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --m=1 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 4 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --m=10 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 5 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --m=1000 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 6 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --m=1 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 7 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --m=10 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 8 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --m=1000 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 9 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --m=1 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 10 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --m=10 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 11 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --m=1000 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 12 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --m=1 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 13 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --m=10 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 14 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --m=1000 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 15 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --m=1 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 16 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --m=10 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 17 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --m=1000 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 18 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --m=1 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 19 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --m=10 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 20 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --m=1000 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 21 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --m=1 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 22 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --m=10 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 23 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --m=1000 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 24 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --m=1 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 25 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --m=10 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 26 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --m=1000 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 27 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --m=1 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 28 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --m=10 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 29 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --m=1000 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 30 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --m=1 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 31 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --m=10 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 32 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --m=1000 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 33 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --m=1 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 34 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --m=10 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 35 ] 
then 
    python main.py --algo=SSO_OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --m=1000 --label=aistats-mujoco --episodes=50 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/nn/funcopt.yaml 
fi 
exit