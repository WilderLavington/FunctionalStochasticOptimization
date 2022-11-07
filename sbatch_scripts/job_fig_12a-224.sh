#!/bin/bash
#SBATCH --account=ubcml
#SBATCH --gres=gpu:1
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=5
#SBATCH --time=00-16:00     # time (DD-HH:MM)
#SBATCH --array=0-224
cd /ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization
conda activate ubcml
wandb offline
if [ $SLURM_ARRAY_TASK_ID -eq 0 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 3 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 4 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 5 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 6 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 7 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 8 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 9 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 10 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 11 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 12 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 13 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 14 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 15 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 16 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 17 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 18 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 19 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 20 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 21 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 22 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 23 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 24 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 25 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 26 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 27 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 28 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 29 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 30 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 31 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 32 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 33 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 34 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 35 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 36 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 37 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 38 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 39 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 40 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 41 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 42 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 43 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 44 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 45 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 46 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 47 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 48 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 49 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 50 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 51 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 52 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 53 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 54 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 55 ]
then
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 56 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 57 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 58 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 59 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 60 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 61 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 62 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 63 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 64 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 65 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 66 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 67 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 68 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 69 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 70 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 71 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 72 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 73 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 74 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 75 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 76 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 77 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 78 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 79 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 80 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 81 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 82 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 83 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 84 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 85 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 86 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 87 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 88 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 89 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 90 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 91 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 92 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 93 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 94 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 95 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 96 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 97 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 98 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 99 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 100 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 101 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 102 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 103 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 104 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 105 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 106 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 107 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 108 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 109 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 110 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 111 ]
then
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 112 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 113 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 114 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 115 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 116 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 117 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 118 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 119 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 120 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 121 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 122 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 123 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 124 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 125 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 126 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 127 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 128 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 129 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 130 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 131 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 132 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 133 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 134 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 135 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 136 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 137 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 138 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 139 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 140 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 141 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 142 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 143 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 144 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 145 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 146 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 147 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 148 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 149 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 150 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 151 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 152 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 153 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 154 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 155 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 156 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 157 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 158 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 159 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 160 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 161 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 162 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 163 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 164 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 165 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 166 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 167 ]
then
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 168 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 169 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 170 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 171 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 172 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 173 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 174 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 175 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 176 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 177 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 178 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 179 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 180 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 181 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 182 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 183 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 184 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 185 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 186 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 187 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 188 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 189 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 190 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 191 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 192 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 193 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 194 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 195 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 196 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 197 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 198 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 199 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 200 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 201 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 202 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 203 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 204 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 205 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 206 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 207 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 208 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 209 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 210 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 211 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 212 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 213 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 214 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 215 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 216 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 217 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 218 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 219 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 220 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 221 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 222 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 223 ]
then
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --group=AIstats_narval --log_dir=./wandb./configs/aistats/atari/baselines.yaml
fi
exit
