#!/bin/bash 
#SBATCH --partition=ubcml 
#SBATCH --gres=gpu:1 
#SBATCH --mem-per-cpu=4G 
#SBATCH --cpus-per-task=5 
#SBATCH --time=00-08:00     # time (DD-HH:MM) 
#SBATCH --array=0-999%24 
conda activate ubcml 
cd /ubc/cs/research/plai-scratch/wlaving 
if [ $SLURM_ARRAY_TASK_ID -eq 0 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 1 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 2 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 3 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 4 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 5 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 6 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 7 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 8 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 9 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 10 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 11 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 12 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 13 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 14 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 15 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 16 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 17 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 18 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 19 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 20 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 21 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 22 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 23 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 24 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 25 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 26 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 27 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 28 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 29 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 30 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 31 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 32 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 33 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 34 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 35 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 36 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 37 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 38 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 39 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 40 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 41 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 42 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 43 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 44 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 45 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 46 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 47 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 48 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 49 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 50 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 51 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 52 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 53 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 54 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 55 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 56 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 57 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 58 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 59 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 60 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 61 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 62 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 63 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 64 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 65 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 66 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 67 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 68 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 69 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 70 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 71 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 72 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 73 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 74 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 75 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 76 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 77 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 78 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 79 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 80 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 81 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 82 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 83 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 84 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 85 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 86 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 87 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 88 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 89 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 90 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 91 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 92 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 93 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 94 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 95 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 96 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 97 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 98 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 99 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 100 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 101 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 102 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 103 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 104 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 105 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 106 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 107 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 108 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 109 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 110 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 111 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 112 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 113 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 114 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 115 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 116 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 117 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 118 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 119 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 120 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 121 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 122 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 123 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 124 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 125 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 126 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 127 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 128 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 129 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 130 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 131 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 132 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 133 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 134 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 135 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 136 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 137 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 138 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 139 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 140 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 141 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 142 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 143 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 144 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 145 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 146 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 147 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 148 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 149 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 150 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 151 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 152 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 153 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 154 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 155 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 156 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 157 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 158 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 159 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 160 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 161 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 162 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 163 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 164 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 165 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 166 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 167 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 168 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 169 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 170 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 171 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 172 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 173 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 174 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 175 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 176 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 177 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 178 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 179 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 180 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 181 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 182 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 183 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 184 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 185 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 186 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 187 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 188 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 189 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 190 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 191 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 192 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 193 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 194 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 195 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 196 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 197 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 198 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 199 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 200 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 201 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 202 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 203 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 204 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 205 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 206 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 207 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 208 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 209 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 210 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 211 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 212 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 213 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 214 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 215 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 216 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 217 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 218 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 219 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 220 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 221 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 222 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 223 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 224 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 225 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 226 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 227 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 228 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 229 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 230 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 231 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 232 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 233 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 234 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 235 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 236 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 237 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 238 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 239 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 240 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 241 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 242 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 243 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 244 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 245 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 246 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 247 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 248 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 249 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 250 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 251 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 252 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 253 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 254 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 255 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 256 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 257 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 258 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 259 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 260 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 261 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 262 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 263 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 264 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 265 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 266 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 267 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 268 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 269 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 270 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 271 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 272 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 273 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 274 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 275 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 276 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 277 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 278 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 279 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 280 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 281 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 282 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 283 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 284 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 285 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 286 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 287 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 288 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 289 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 290 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 291 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 292 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 293 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 294 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 295 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 296 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 297 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 298 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 299 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 300 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 301 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 302 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 303 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 304 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 305 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 306 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 307 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 308 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 309 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 310 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 311 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 312 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 313 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 314 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 315 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 316 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 317 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 318 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 319 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 320 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 321 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 322 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 323 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 324 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 325 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 326 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 327 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 328 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 329 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 330 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 331 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 332 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 333 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 334 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 335 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 336 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 337 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 338 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 339 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 340 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 341 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 342 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 343 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 344 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 345 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 346 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 347 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 348 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 349 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 350 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 351 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 352 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 353 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 354 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 355 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 356 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 357 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 358 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 359 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 360 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 361 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 362 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 363 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 364 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 365 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 366 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 367 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 368 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 369 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 370 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 371 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=100 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 372 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 373 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 374 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 375 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 376 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 377 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 378 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 379 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 380 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 381 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 382 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 383 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 384 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 385 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 386 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 387 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 388 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 389 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 390 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 391 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 392 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 393 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 394 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 395 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 396 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 397 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 398 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 399 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 400 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 401 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 402 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 403 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 404 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 405 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 406 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 407 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 408 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 409 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 410 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 411 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 412 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 413 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 414 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 415 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 416 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 417 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 418 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 419 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 420 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 421 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 422 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 423 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 424 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 425 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 426 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 427 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 428 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 429 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 430 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 431 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 432 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 433 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 434 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 435 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 436 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 437 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 438 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 439 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 440 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 441 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 442 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 443 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 444 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 445 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 446 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 447 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 448 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 449 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 450 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 451 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 452 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 453 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 454 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 455 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 456 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 457 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 458 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 459 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 460 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 461 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 462 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 463 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 464 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 465 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 466 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 467 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 468 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 469 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 470 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 471 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 472 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 473 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 474 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 475 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 476 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 477 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 478 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 479 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 480 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 481 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 482 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 483 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 484 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 485 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 486 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 487 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 488 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 489 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 490 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 491 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 492 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 493 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 494 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 495 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 496 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 497 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 498 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 499 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 500 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 501 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 502 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 503 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 504 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 505 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 506 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 507 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 508 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 509 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 510 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 511 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 512 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 513 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 514 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 515 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 516 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 517 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 518 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 519 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 520 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 521 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 522 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 523 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 524 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 525 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 526 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 527 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 528 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 529 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 530 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 531 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 532 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 533 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 534 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 535 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 536 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 537 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 538 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 539 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 540 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 541 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 542 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 543 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 544 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 545 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 546 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 547 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 548 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 549 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 550 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 551 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 552 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 553 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 554 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 555 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 556 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 557 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 558 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 559 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 560 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 561 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 562 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 563 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 564 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 565 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 566 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 567 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 568 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 569 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 570 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 571 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 572 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 573 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 574 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 575 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 576 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 577 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 578 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 579 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 580 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 581 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 582 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 583 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 584 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 585 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 586 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 587 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 588 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 589 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 590 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 591 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 592 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 593 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 594 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 595 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 596 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 597 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 598 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 599 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 600 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 601 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 602 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 603 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 604 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 605 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 606 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 607 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 608 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 609 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 610 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 611 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 612 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 613 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 614 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 615 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 616 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 617 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 618 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 619 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 620 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 621 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 622 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 623 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 624 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 625 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 626 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 627 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 628 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 629 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 630 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 631 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 632 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 633 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 634 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 635 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 636 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 637 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 638 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 639 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 640 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 641 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 642 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 643 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 644 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 645 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 646 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 647 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 648 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 649 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 650 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 651 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 652 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 653 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 654 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 655 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 656 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 657 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 658 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 659 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 660 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 661 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 662 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 663 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 664 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 665 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 666 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 667 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 668 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 669 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 670 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 671 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 672 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 673 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 674 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 675 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 676 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 677 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 678 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 679 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 680 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 681 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 682 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 683 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 684 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 685 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 686 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 687 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 688 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 689 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 690 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 691 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 692 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 693 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 694 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 695 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 696 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 697 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 698 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 699 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 700 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 701 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 702 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 703 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 704 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 705 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 706 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 707 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 708 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 709 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 710 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 711 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 712 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 713 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 714 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 715 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 716 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 717 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 718 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 719 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 720 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 721 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 722 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 723 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 724 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 725 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 726 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 727 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 728 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 729 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 730 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 731 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 732 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 733 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 734 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 735 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 736 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 737 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 738 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 739 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 740 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 741 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 742 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 743 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 744 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 745 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 746 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 747 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 748 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 749 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 750 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 751 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 752 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 753 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 754 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 755 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 756 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 757 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 758 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 759 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 760 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 761 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 762 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 763 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 764 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 765 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 766 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 767 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 768 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 769 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 770 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 771 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 772 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 773 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 774 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 775 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 776 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 777 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 778 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 779 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 780 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 781 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 782 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 783 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 784 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 785 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 786 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 787 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 788 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 789 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 790 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 791 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 792 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 793 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 794 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 795 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 796 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 797 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 798 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 799 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 800 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 801 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 802 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 803 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 804 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 805 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 806 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 807 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 808 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 809 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 810 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 811 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 812 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 813 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 814 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 815 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 816 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 817 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 818 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 819 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 820 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 821 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 822 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 823 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 824 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 825 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 826 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 827 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 828 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 829 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 830 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 831 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 832 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 833 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 834 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 835 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 836 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 837 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 838 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 839 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 840 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 841 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 842 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 843 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 844 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 845 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 846 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 847 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 848 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 849 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 850 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 851 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 852 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 853 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 854 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 855 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 856 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 857 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 858 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 859 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 860 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 861 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 862 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 863 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 864 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 865 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 866 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 867 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 868 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 869 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 870 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 871 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 872 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 873 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 874 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 875 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 876 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 877 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 878 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 879 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 880 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 881 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 882 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 883 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 884 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 885 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 886 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 887 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 888 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 889 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 890 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 891 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 892 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 893 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 894 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 895 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 896 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 897 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 898 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 899 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 900 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 901 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 902 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 903 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 904 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 905 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 906 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 907 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 908 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 909 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 910 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 911 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 912 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 913 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 914 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 915 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 916 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 917 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 918 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 919 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 920 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 921 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 922 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 923 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 924 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 925 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 926 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 927 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 928 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 929 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 930 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 931 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 932 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 933 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 934 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 935 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 936 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 937 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 938 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 939 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 940 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 941 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 942 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 943 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 944 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 945 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 946 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 947 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 948 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 949 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 950 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 951 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 952 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 953 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 954 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 955 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 956 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 957 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 958 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 959 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 960 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 961 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 962 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 963 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 964 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 965 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 966 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 967 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 968 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 969 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 970 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 971 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 972 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 973 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 974 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 975 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 976 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 977 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 978 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 979 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 980 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 981 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 982 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 983 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 984 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 985 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 986 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 987 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 988 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 989 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 990 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 991 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 992 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 993 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 994 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 995 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 996 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 997 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 998 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
exit