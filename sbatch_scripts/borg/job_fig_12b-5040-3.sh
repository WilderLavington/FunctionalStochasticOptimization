#!/bin/sh
#SBATCH --partition=plai
#SBATCH --gres=gpu:1
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-gpu=5
#SBATCH --time=00-08:00     # time (DD-HH:MM)
#SBATCH --array=3000-3999%16
cd /ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization
conda activate borg_funcopt_env
if [ $SLURM_ARRAY_TASK_ID -eq 0 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 3 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 4 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 5 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 6 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 7 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 8 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 9 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 10 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 11 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 12 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 13 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 14 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 15 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 16 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 17 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 18 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 19 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 20 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 21 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 22 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 23 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 24 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 25 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 26 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=1000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 27 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 28 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 29 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 30 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 31 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 32 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 33 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 34 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 35 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 36 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 37 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 38 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 39 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 40 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 41 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 42 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 43 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 44 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 45 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 46 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 47 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 48 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 49 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 50 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 51 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 52 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 53 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 54 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 55 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 56 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 57 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 58 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 59 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 60 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 61 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 62 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 63 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 64 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 65 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 66 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 67 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 68 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 69 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 70 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 71 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 72 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 73 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 74 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 75 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 76 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 77 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 78 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 79 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 80 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 81 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 82 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 83 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 84 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 85 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 86 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 87 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 88 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 89 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 90 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 91 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 92 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 93 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 94 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 95 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 96 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 97 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 98 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 99 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 100 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 101 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 102 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 103 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 104 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 105 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 106 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 107 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 108 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 109 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 110 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 111 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 112 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 113 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 114 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 115 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 116 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 117 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 118 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 119 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 120 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 121 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 122 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 123 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 124 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 125 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 126 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 127 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 128 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 129 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 130 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 131 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 132 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 133 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 134 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 135 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 136 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 137 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 138 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 139 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 140 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 141 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 142 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 143 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 144 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 145 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 146 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 147 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 148 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 149 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 150 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 151 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 152 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 153 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 154 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 155 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 156 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 157 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 158 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 159 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 160 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 161 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 162 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 163 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 164 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 165 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 166 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 167 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 168 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 169 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 170 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 171 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 172 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 173 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 174 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 175 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 176 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 177 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 178 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 179 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 180 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 181 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 182 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 183 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 184 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 185 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 186 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 187 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 188 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 189 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 190 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 191 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 192 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 193 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 194 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 195 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 196 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 197 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 198 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 199 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 200 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 201 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 202 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 203 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 204 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 205 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 206 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 207 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 208 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 209 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 210 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 211 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 212 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 213 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 214 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 215 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 216 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 217 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 218 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 219 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 220 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 221 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 222 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 223 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 224 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 225 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 226 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 227 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 228 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 229 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 230 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 231 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 232 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 233 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 234 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 235 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 236 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 237 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 238 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 239 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 240 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 241 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 242 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 243 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 244 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 245 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 246 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 247 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 248 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 249 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 250 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 251 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 252 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 253 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 254 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 255 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 256 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 257 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 258 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 259 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 260 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 261 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 262 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 263 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 264 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 265 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 266 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 267 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 268 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 269 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 270 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 271 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 272 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 273 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 274 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 275 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 276 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 277 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 278 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 279 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 280 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 281 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 282 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 283 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 284 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 285 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 286 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 287 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 288 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 289 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 290 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 291 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 292 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 293 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 294 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 295 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 296 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 297 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 298 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 299 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 300 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 301 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 302 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 303 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 304 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 305 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 306 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 307 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 308 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 309 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 310 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 311 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 312 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 313 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 314 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 315 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 316 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 317 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 318 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 319 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 320 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 321 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 322 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 323 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 324 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 325 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 326 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 327 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 328 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 329 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 330 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 331 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 332 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 333 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 334 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 335 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 336 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 337 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 338 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 339 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 340 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 341 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 342 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 343 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 344 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 345 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 346 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 347 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 348 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 349 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 350 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 351 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 352 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 353 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 354 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 355 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 356 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 357 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 358 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 359 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 360 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 361 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 362 ]
then
    python atari/atari_ex.py --algo=SSO_SLS --m=10000 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 363 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 364 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 365 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 366 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 367 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 368 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 369 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 370 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 371 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 372 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 373 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 374 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 375 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 376 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 377 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 378 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 379 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 380 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 381 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 382 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 383 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 384 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 385 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 386 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 387 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 388 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 389 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 390 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 391 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 392 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 393 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 394 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 395 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 396 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 397 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 398 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 399 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 400 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 401 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 402 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 403 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 404 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 405 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 406 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 407 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 408 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 409 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 410 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 411 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 412 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 413 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 414 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 415 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 416 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 417 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 418 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 419 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 420 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 421 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 422 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 423 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 424 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 425 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 426 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 427 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 428 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 429 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 430 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 431 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 432 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 433 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 434 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 435 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 436 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 437 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 438 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 439 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 440 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 441 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 442 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 443 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 444 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 445 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 446 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 447 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 448 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 449 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 450 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 451 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 452 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 453 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 454 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 455 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 456 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 457 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 458 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 459 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 460 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 461 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 462 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 463 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 464 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 465 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 466 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 467 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 468 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 469 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 470 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 471 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 472 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 473 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 474 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 475 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 476 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 477 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 478 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 479 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 480 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 481 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 482 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 483 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 484 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 485 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 486 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 487 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 488 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 489 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 490 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 491 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 492 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 493 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 494 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 495 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 496 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 497 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 498 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 499 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 500 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 501 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 502 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 503 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 504 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 505 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 506 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 507 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 508 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 509 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 510 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 511 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 512 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 513 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 514 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 515 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 516 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 517 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 518 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 519 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 520 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 521 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 522 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 523 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 524 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 525 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 526 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 527 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 528 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 529 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 530 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 531 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 532 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 533 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 534 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 535 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 536 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 537 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 538 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 539 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 540 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 541 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 542 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 543 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 544 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 545 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 546 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 547 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 548 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 549 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 550 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 551 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 552 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 553 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 554 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 555 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 556 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 557 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 558 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 559 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 560 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 561 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 562 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 563 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 564 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 565 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 566 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 567 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 568 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 569 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 570 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 571 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 572 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 573 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 574 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 575 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 576 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 577 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 578 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 579 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 580 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 581 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 582 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 583 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 584 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 585 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 586 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 587 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 588 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 589 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 590 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 591 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 592 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 593 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 594 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 595 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 596 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 597 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 598 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 599 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 600 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 601 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 602 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 603 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 604 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 605 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 606 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 607 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 608 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 609 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 610 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 611 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 612 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 613 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 614 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 615 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 616 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 617 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 618 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 619 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 620 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 621 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 622 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 623 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 624 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 625 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 626 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 627 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 628 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 629 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 630 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 631 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 632 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 633 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 634 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 635 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 636 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 637 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 638 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 639 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 640 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 641 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 642 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 643 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 644 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 645 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 646 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 647 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 648 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 649 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 650 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 651 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 652 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 653 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 654 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 655 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 656 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 657 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 658 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 659 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 660 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 661 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 662 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 663 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 664 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 665 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 666 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 667 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 668 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 669 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 670 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 671 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 672 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 673 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 674 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 675 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 676 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 677 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 678 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 679 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 680 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 681 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 682 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 683 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 684 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 685 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 686 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 687 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 688 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 689 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 690 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 691 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 692 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 693 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 694 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 695 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 696 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 697 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 698 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=1 --log_lr=-3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 699 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 700 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 701 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 702 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 703 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 704 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 705 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 706 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 707 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 708 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 709 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 710 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 711 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 712 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 713 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 714 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 715 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 716 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 717 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 718 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 719 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 720 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 721 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 722 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 723 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 724 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 725 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 726 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 727 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 728 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 729 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 730 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 731 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 732 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 733 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 734 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 735 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 736 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 737 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 738 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 739 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 740 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 741 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 742 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 743 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 744 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 745 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 746 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=3.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 747 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 748 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 749 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 750 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 751 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 752 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 753 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 754 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 755 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 756 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 757 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 758 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 759 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 760 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 761 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 762 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 763 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 764 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 765 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 766 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 767 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 768 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 769 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 770 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 771 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 772 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 773 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 774 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 775 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 776 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 777 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 778 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 779 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 780 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 781 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 782 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 783 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 784 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 785 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 786 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 787 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 788 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 789 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 790 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 791 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 792 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 793 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 794 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 795 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 796 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 797 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 798 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 799 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 800 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 801 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 802 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 803 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 804 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 805 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 806 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 807 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 808 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 809 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 810 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 811 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 812 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 813 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 814 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 815 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 816 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 817 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 818 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 819 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 820 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 821 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 822 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 823 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 824 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 825 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 826 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 827 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 828 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 829 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 830 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 831 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 832 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 833 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 834 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 835 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 836 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 837 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 838 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 839 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 840 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 841 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 842 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 843 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 844 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 845 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 846 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 847 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 848 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 849 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 850 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 851 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 852 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 853 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 854 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 855 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 856 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 857 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 858 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 859 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 860 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 861 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 862 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 863 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 864 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 865 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 866 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 867 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 868 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 869 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 870 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 871 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 872 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 873 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 874 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 875 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 876 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 877 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 878 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 879 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 880 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 881 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 882 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 883 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 884 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 885 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 886 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 887 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 888 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 889 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 890 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=0.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 891 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 892 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 893 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 894 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 895 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 896 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 897 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 898 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 899 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 900 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 901 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 902 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 903 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 904 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 905 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 906 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 907 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 908 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 909 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 910 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 911 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 912 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 913 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 914 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 915 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 916 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 917 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 918 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 919 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 920 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 921 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 922 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 923 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 924 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 925 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 926 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 927 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 928 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 929 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 930 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 931 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 932 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 933 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 934 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 935 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 936 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 937 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 938 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-1.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 939 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 940 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 941 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 942 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 943 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 944 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 945 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 946 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 947 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 948 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 949 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 950 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 951 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 952 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 953 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 954 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 955 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 956 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 957 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 958 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 959 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 960 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 961 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 962 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 963 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 964 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 965 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 966 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 967 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 968 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 969 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 970 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 971 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 972 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 973 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 974 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 975 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 976 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 977 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 978 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 979 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 980 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 981 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 982 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 983 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 984 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 985 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 986 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-2.0 --label=atari --env_name=PongNoFrameskip-v4 --use_optimal_stepsize=0 --seed=1 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 987 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 988 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 989 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 990 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 991 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 992 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 993 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 994 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=3 --beta=0.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 995 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 996 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=1000 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 997 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=constant --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 998 ]
then
    python atari/atari_ex.py --algo=SSO_AdaOGD --m=10 --log_lr=-3.0 --label=atari --env_name=BreakoutNoFrameskip-v4 --use_optimal_stepsize=0 --seed=2 --beta=1.0 --beta_update=1.0 --c=0.5 --episodes=100 --samples_per_update=100 --eta_schedule=stochastic --program=atari/atari_ex.py --group=AIstats_borg --log_dir=./wandb./configs/aistats/atari/funcopt.yaml
fi
exit
