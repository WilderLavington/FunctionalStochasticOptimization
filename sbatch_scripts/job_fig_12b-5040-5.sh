#!/bin/bash 
#SBATCH --partition=ubcml 
#SBATCH --gres=gpu:1 
#SBATCH --mem-per-cpu=4G 
#SBATCH --cpus-per-task=5 
#SBATCH --time=00-08:00     # time (DD-HH:MM) 
#SBATCH --array=0-45%24 
conda activate ubcml 
cd /ubc/cs/research/plai-scratch/wlaving 
if [ $SLURM_ARRAY_TASK_ID -eq 0 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 1 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 2 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 3 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 4 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 5 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 6 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 7 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 8 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 9 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 10 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 11 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 12 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 13 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 14 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 15 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 16 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 17 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 18 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 19 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 20 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 21 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 22 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 23 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 24 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 25 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 26 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 27 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 28 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 29 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 30 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 31 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 32 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 33 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 34 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 35 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 36 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 37 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 38 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 39 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 40 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 41 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 42 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 43 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
if [ $SLURM_ARRAY_TASK_ID -eq 44 ] 
then 
    python main.py --algo=SSO_AdaOGD --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --group=AIstats_ubcml --log_dir=./wandb./configs/aistats/atari/funcopt.yaml 
fi 
exit