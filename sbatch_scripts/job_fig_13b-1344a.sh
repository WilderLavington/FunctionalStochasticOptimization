#!/bin/bash
#SBATCH --account=ubcml
#SBATCH --gres=gpu:1
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=5
#SBATCH --time=00-16:00     # time (DD-HH:MM)
#SBATCH --array=0-999
cd /ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization
conda activate ubcml
wandb offline
if [ $SLURM_ARRAY_TASK_ID -eq 0 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 3 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 4 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 5 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 6 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 7 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 8 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 9 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 10 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 11 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 12 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 13 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 14 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 15 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 16 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 17 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 18 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 19 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 20 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 21 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 22 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 23 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 24 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 25 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 26 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 27 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 28 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 29 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 30 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 31 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 32 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 33 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 34 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 35 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 36 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 37 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 38 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 39 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 40 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 41 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 42 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 43 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 44 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 45 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 46 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 47 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 48 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 49 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 50 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 51 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 52 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 53 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 54 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 55 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 56 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 57 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 58 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 59 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 60 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 61 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 62 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 63 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 64 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 65 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 66 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 67 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 68 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 69 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 70 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 71 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 72 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 73 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 74 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 75 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 76 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 77 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 78 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 79 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 80 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 81 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 82 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 83 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 84 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 85 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 86 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 87 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 88 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 89 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 90 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 91 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 92 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 93 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 94 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 95 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 96 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 97 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 98 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 99 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 100 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 101 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 102 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 103 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 104 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 105 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 106 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 107 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 108 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 109 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 110 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 111 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 112 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 113 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 114 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 115 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 116 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 117 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 118 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 119 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 120 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 121 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 122 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 123 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 124 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 125 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 126 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 127 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 128 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 129 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 130 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 131 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 132 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 133 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 134 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 135 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 136 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 137 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 138 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 139 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 140 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 141 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 142 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 143 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 144 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 145 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 146 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 147 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 148 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 149 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 150 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 151 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 152 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 153 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 154 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 155 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 156 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 157 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 158 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 159 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 160 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 161 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 162 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 163 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 164 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 165 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 166 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 167 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 168 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 169 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 170 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 171 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 172 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 173 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 174 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 175 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 176 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 177 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 178 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 179 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 180 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 181 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 182 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 183 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 184 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 185 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 186 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 187 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 188 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 189 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 190 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 191 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 192 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 193 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 194 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 195 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 196 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 197 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 198 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 199 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 200 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 201 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 202 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 203 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 204 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 205 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 206 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 207 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 208 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 209 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 210 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 211 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 212 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 213 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 214 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 215 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 216 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 217 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 218 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 219 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 220 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 221 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 222 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 223 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 224 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 225 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 226 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 227 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 228 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 229 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 230 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 231 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 232 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 233 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 234 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 235 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 236 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 237 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 238 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 239 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 240 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 241 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 242 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 243 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 244 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 245 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 246 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 247 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 248 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 249 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 250 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 251 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 252 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 253 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 254 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 255 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 256 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 257 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 258 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 259 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 260 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 261 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 262 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 263 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 264 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 265 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 266 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 267 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 268 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 269 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 270 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 271 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 272 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 273 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 274 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 275 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 276 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 277 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 278 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 279 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 280 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 281 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 282 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 283 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 284 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 285 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 286 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 287 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 288 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 289 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 290 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 291 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 292 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 293 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 294 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 295 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 296 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 297 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 298 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 299 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 300 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 301 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 302 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 303 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 304 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 305 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 306 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 307 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 308 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 309 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 310 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 311 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 312 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 313 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 314 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 315 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 316 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 317 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 318 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 319 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 320 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 321 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 322 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 323 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 324 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 325 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 326 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 327 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 328 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 329 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 330 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 331 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 332 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 333 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 334 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 335 ]
then
    python mujoco/mujoco_ex.py --algo=OGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 336 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 337 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 338 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 339 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 340 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 341 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 342 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 343 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 344 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 345 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 346 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 347 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 348 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 349 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 350 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 351 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 352 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 353 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 354 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 355 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 356 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 357 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 358 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 359 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 360 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 361 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 362 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 363 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 364 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 365 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 366 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 367 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 368 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 369 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 370 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 371 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 372 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 373 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 374 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 375 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 376 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 377 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 378 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 379 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 380 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 381 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 382 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 383 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 384 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 385 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 386 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 387 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 388 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 389 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 390 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 391 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 392 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 393 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 394 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 395 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 396 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 397 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 398 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 399 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 400 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 401 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 402 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 403 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 404 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 405 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 406 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 407 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 408 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 409 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 410 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 411 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 412 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 413 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 414 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 415 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 416 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 417 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 418 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 419 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 420 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 421 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 422 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 423 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 424 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 425 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 426 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 427 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 428 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 429 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 430 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 431 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 432 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 433 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 434 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 435 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 436 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 437 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 438 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 439 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 440 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 441 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 442 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 443 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 444 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 445 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 446 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 447 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 448 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 449 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 450 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 451 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 452 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 453 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 454 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 455 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 456 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 457 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 458 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 459 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 460 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 461 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 462 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 463 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 464 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 465 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 466 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 467 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 468 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 469 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 470 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 471 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 472 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 473 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 474 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 475 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 476 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 477 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 478 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 479 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 480 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 481 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 482 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 483 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 484 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 485 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 486 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 487 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 488 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 489 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 490 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 491 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 492 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 493 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 494 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 495 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 496 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 497 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 498 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 499 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 500 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 501 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 502 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 503 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 504 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 505 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 506 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 507 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 508 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 509 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 510 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 511 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 512 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 513 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 514 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 515 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 516 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 517 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 518 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 519 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 520 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 521 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 522 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 523 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 524 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 525 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 526 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 527 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 528 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 529 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 530 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 531 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 532 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 533 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 534 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 535 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 536 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 537 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 538 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 539 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 540 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 541 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 542 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 543 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 544 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 545 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 546 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 547 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 548 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 549 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 550 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 551 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 552 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 553 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 554 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 555 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 556 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 557 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 558 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 559 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 560 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 561 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 562 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 563 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 564 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 565 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 566 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 567 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 568 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 569 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 570 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 571 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 572 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 573 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 574 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 575 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 576 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 577 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 578 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 579 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 580 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 581 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 582 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 583 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 584 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 585 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 586 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 587 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 588 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 589 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 590 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 591 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 592 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 593 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 594 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 595 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 596 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 597 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 598 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 599 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 600 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 601 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 602 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 603 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 604 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 605 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 606 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 607 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 608 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 609 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 610 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 611 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 612 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 613 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 614 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 615 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 616 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 617 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 618 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 619 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 620 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 621 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 622 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 623 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 624 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 625 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 626 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 627 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 628 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 629 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 630 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 631 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 632 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 633 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 634 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 635 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 636 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 637 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 638 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 639 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 640 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 641 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 642 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 643 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 644 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 645 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 646 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 647 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 648 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 649 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 650 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 651 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 652 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 653 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 654 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 655 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 656 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 657 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 658 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 659 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 660 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 661 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 662 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 663 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 664 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 665 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 666 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 667 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 668 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 669 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 670 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 671 ]
then
    python mujoco/mujoco_ex.py --algo=AdaOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 672 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 673 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 674 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 675 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 676 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 677 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 678 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 679 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 680 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 681 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 682 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 683 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 684 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 685 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 686 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 687 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 688 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 689 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 690 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 691 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 692 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 693 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 694 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 695 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 696 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 697 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 698 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 699 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 700 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 701 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 702 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 703 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 704 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 705 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 706 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 707 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 708 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 709 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 710 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 711 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 712 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 713 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 714 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 715 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 716 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 717 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 718 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 719 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 720 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 721 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 722 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 723 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 724 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 725 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 726 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 727 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 728 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 729 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 730 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 731 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 732 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 733 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 734 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 735 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 736 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 737 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 738 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 739 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 740 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 741 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 742 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 743 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 744 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 745 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 746 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 747 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 748 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 749 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 750 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 751 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 752 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 753 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 754 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 755 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 756 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 757 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 758 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 759 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 760 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 761 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 762 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 763 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 764 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 765 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 766 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 767 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 768 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 769 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 770 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 771 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 772 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 773 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 774 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 775 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 776 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 777 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 778 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 779 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 780 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 781 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 782 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 783 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 784 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 785 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 786 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 787 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 788 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 789 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 790 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 791 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 792 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 793 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 794 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 795 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 796 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 797 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 798 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 799 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 800 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 801 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 802 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 803 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 804 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 805 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 806 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 807 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 808 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 809 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 810 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 811 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 812 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 813 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 814 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 815 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 816 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 817 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 818 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 819 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 820 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 821 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 822 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 823 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 824 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 825 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 826 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 827 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 828 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 829 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 830 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 831 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 832 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 833 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 834 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 835 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 836 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 837 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 838 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 839 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 840 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 841 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 842 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 843 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 844 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 845 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 846 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 847 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 848 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 849 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 850 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 851 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 852 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 853 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 854 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 855 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 856 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 857 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 858 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 859 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 860 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 861 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 862 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 863 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 864 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 865 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 866 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 867 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 868 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 869 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 870 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 871 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 872 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 873 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 874 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 875 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 876 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 877 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 878 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 879 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 880 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 881 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 882 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 883 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 884 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 885 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 886 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 887 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 888 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 889 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 890 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 891 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 892 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 893 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 894 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 895 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 896 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 897 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 898 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 899 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 900 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 901 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 902 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 903 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 904 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 905 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 906 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 907 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 908 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 909 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 910 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 911 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 912 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 913 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 914 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 915 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 916 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 917 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 918 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 919 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 920 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 921 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 922 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 923 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 924 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 925 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 926 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 927 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 928 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 929 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 930 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 931 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 932 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 933 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 934 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 935 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 936 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 937 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 938 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 939 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 940 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 941 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 942 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 943 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 944 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 945 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 946 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 947 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 948 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 949 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 950 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 951 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 952 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 953 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 954 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 955 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 956 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 957 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 958 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 959 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 960 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 961 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 962 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 963 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 964 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 965 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 966 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 967 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 968 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 969 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 970 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 971 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 972 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 973 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 974 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 975 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 976 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 977 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 978 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 979 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 980 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 981 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 982 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 983 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 984 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 985 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 986 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 987 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 988 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 989 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 990 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 991 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 992 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 993 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 994 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 995 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 996 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 997 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 998 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 999 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1000 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1001 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1002 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1003 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1004 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1005 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1006 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1007 ]
then
    python mujoco/mujoco_ex.py --algo=AdamOGD --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1008 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1009 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1010 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1011 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1012 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1013 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1014 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1015 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1016 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1017 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1018 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1019 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1020 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1021 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1022 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1023 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1024 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1025 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1026 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1027 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1028 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1029 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1030 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1031 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1032 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1033 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1034 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1035 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1036 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1037 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1038 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1039 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1040 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1041 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1042 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1043 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1044 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1045 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1046 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1047 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1048 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1049 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1050 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1051 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1052 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1053 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1054 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1055 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1056 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1057 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1058 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1059 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1060 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1061 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1062 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1063 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1064 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1065 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1066 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1067 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1068 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1069 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1070 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1071 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1072 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1073 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1074 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1075 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1076 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1077 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1078 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1079 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1080 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1081 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1082 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1083 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1084 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1085 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1086 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1087 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1088 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1089 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1090 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1091 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1092 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1093 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1094 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1095 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1096 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1097 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1098 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1099 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1100 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1101 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1102 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1103 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1104 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1105 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1106 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1107 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1108 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1109 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1110 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1111 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1112 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1113 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1114 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1115 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1116 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1117 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1118 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1119 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1120 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1121 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1122 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1123 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1124 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1125 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1126 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1127 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1128 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1129 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1130 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1131 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1132 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1133 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1134 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1135 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1136 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1137 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1138 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1139 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1140 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1141 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1142 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1143 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1144 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1145 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1146 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1147 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1148 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1149 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1150 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1151 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=-1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1152 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1153 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1154 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1155 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1156 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1157 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1158 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1159 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1160 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1161 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1162 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1163 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1164 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1165 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1166 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1167 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1168 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1169 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1170 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1171 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1172 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1173 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1174 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1175 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1176 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1177 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1178 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1179 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1180 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1181 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1182 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1183 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1184 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1185 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1186 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1187 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1188 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1189 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1190 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1191 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1192 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1193 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1194 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1195 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1196 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1197 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1198 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1199 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=0.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1200 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1201 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1202 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1203 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1204 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1205 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1206 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1207 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1208 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1209 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1210 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1211 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1212 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1213 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1214 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1215 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1216 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1217 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1218 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1219 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1220 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1221 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1222 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1223 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1224 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1225 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1226 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1227 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1228 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1229 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1230 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1231 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1232 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1233 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1234 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1235 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1236 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1237 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1238 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1239 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1240 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1241 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1242 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1243 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1244 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1245 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1246 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1247 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=1.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1248 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1249 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1250 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1251 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1252 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1253 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1254 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1255 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1256 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1257 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1258 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1259 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1260 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1261 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1262 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1263 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1264 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1265 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1266 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1267 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1268 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1269 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1270 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1271 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1272 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1273 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1274 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1275 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1276 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1277 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1278 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1279 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1280 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1281 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1282 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1283 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1284 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1285 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1286 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1287 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1288 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1289 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1290 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1291 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1292 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1293 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1294 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1295 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=2.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1296 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1297 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1298 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1299 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1300 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1301 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1302 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1303 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1304 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1305 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1306 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1307 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1308 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1309 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1310 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1311 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1312 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1313 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1314 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1315 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1316 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1317 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1318 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1319 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=nn --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1320 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1321 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1322 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1323 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1324 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1325 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1326 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1327 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1328 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1329 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1330 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1331 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Hopper-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1332 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1333 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1334 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1335 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1336 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1337 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=1 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1338 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1339 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=1 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1340 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1341 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=2 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1342 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1343 ]
then
    python mujoco/mujoco_ex.py --algo=OSls --log_lr=3.0 --model_type=linear --env_name=Walker2d-v2 --beta=0 --beta_update=1 --seed=3 --label=mujoco --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/mujoco/baselines.yaml
fi
exit