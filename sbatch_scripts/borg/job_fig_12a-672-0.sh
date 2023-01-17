#!/bin/sh 
#SBATCH --partition=plai 
#SBATCH --gres=gpu:1 
#SBATCH --mem-per-cpu=4G 
#SBATCH --cpus-per-gpu=5 
#SBATCH --time=00-08:00     # time (DD-HH:MM) 
#SBATCH --array=0-672%16 
cd /ubc/cs/research/plai-scratch/wlaving 
if [ $SLURM_ARRAY_TASK_ID -eq 0 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 1 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 2 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 3 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 4 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 5 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 6 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 7 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 8 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 9 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 10 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 11 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 12 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 13 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 14 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 15 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 16 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 17 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 18 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 19 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 20 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 21 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 22 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 23 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 24 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 25 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 26 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 27 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 28 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 29 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 30 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 31 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 32 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 33 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 34 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 35 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 36 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 37 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 38 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 39 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 40 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 41 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 42 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 43 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 44 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 45 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 46 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 47 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 48 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 49 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 50 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 51 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 52 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 53 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 54 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 55 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 56 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 57 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 58 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 59 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 60 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 61 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 62 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 63 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 64 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 65 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 66 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 67 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 68 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 69 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 70 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 71 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 72 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 73 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 74 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 75 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 76 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 77 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 78 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 79 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 80 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 81 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 82 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 83 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 84 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 85 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 86 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 87 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 88 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 89 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 90 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 91 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 92 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 93 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 94 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 95 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=0.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 96 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 97 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 98 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 99 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 100 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 101 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 102 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 103 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 104 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 105 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 106 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 107 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 108 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 109 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 110 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 111 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 112 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 113 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 114 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 115 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 116 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 117 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 118 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 119 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 120 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 121 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 122 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 123 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 124 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 125 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 126 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 127 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 128 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 129 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 130 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 131 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 132 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 133 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 134 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 135 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 136 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 137 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 138 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 139 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 140 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 141 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 142 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 143 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 144 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 145 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 146 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 147 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 148 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 149 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 150 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 151 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 152 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 153 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 154 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 155 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 156 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 157 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 158 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 159 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 160 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 161 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 162 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 163 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 164 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 165 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 166 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 167 ] 
then 
    python atari/atari_ex.py --algo=OGD --log_lr=-3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 168 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 169 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 170 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 171 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 172 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 173 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 174 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 175 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 176 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 177 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 178 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 179 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 180 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 181 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 182 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 183 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 184 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 185 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 186 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 187 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 188 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 189 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 190 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 191 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 192 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 193 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 194 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 195 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 196 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 197 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 198 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 199 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 200 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 201 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 202 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 203 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 204 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 205 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 206 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 207 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 208 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 209 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 210 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 211 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 212 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 213 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 214 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 215 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 216 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 217 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 218 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 219 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 220 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 221 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 222 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 223 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 224 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 225 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 226 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 227 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 228 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 229 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 230 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 231 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 232 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 233 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 234 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 235 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 236 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 237 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 238 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 239 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 240 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 241 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 242 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 243 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 244 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 245 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 246 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 247 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 248 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 249 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 250 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 251 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 252 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 253 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 254 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 255 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 256 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 257 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 258 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 259 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 260 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 261 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 262 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 263 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=0.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 264 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 265 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 266 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 267 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 268 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 269 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 270 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 271 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 272 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 273 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 274 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 275 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 276 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 277 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 278 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 279 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 280 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 281 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 282 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 283 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 284 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 285 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 286 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 287 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 288 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 289 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 290 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 291 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 292 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 293 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 294 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 295 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 296 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 297 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 298 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 299 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 300 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 301 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 302 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 303 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 304 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 305 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 306 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 307 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 308 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 309 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 310 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 311 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 312 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 313 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 314 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 315 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 316 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 317 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 318 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 319 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 320 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 321 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 322 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 323 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 324 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 325 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 326 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 327 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 328 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 329 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 330 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 331 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 332 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 333 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 334 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 335 ] 
then 
    python atari/atari_ex.py --algo=AdaOGD --log_lr=-3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 336 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 337 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 338 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 339 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 340 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 341 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 342 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 343 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 344 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 345 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 346 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 347 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 348 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 349 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 350 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 351 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 352 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 353 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 354 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 355 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 356 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 357 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 358 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 359 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 360 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 361 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 362 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 363 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 364 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 365 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 366 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 367 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 368 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 369 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 370 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 371 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 372 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 373 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 374 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 375 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 376 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 377 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 378 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 379 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 380 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 381 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 382 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 383 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 384 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 385 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 386 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 387 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 388 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 389 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 390 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 391 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 392 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 393 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 394 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 395 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 396 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 397 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 398 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 399 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 400 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 401 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 402 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 403 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 404 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 405 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 406 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 407 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 408 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 409 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 410 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 411 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 412 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 413 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 414 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 415 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 416 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 417 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 418 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 419 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 420 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 421 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 422 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 423 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 424 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 425 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 426 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 427 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 428 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 429 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 430 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 431 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=0.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 432 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 433 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 434 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 435 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 436 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 437 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 438 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 439 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 440 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 441 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 442 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 443 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 444 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 445 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 446 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 447 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 448 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 449 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 450 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 451 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 452 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 453 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 454 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 455 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 456 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 457 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 458 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 459 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 460 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 461 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 462 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 463 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 464 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 465 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 466 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 467 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 468 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 469 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 470 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 471 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 472 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 473 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 474 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 475 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 476 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 477 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 478 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 479 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 480 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 481 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 482 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 483 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 484 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 485 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 486 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 487 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 488 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 489 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 490 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 491 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 492 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 493 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 494 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 495 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 496 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 497 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 498 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 499 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 500 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 501 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 502 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 503 ] 
then 
    python atari/atari_ex.py --algo=AdamOGD --log_lr=-3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 504 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 505 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 506 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 507 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 508 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 509 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 510 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 511 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 512 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 513 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 514 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 515 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 516 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 517 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 518 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 519 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 520 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 521 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 522 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 523 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 524 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 525 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 526 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 527 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 528 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 529 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 530 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 531 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 532 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 533 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 534 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 535 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 536 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 537 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 538 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 539 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 540 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 541 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 542 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 543 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 544 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 545 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 546 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 547 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 548 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 549 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 550 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 551 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 552 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 553 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 554 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 555 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 556 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 557 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 558 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 559 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 560 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 561 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 562 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 563 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 564 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 565 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 566 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 567 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 568 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 569 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 570 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 571 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 572 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 573 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 574 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 575 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 576 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 577 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 578 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 579 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 580 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 581 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 582 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 583 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 584 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 585 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 586 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 587 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 588 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 589 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 590 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 591 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 592 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 593 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 594 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 595 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 596 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 597 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 598 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 599 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=0.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 600 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 601 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 602 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 603 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 604 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 605 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 606 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 607 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 608 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 609 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 610 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 611 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 612 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 613 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 614 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 615 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 616 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 617 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 618 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 619 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 620 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 621 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 622 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 623 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-1.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 624 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 625 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 626 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 627 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 628 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 629 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 630 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 631 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 632 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 633 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 634 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 635 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 636 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 637 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 638 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 639 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 640 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 641 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 642 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 643 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 644 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 645 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 646 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 647 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-2.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 648 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 649 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 650 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 651 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=3 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 652 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 653 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 654 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 655 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=3 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 656 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 657 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 658 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 659 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=2 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 660 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 661 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 662 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 663 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=2 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 664 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 665 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 666 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 667 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=1 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 668 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 669 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 670 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 671 ] 
then 
    python atari/atari_ex.py --algo=OSLS --log_lr=-3.0 --seed=1 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/baselines.yaml 
fi 
exit