#!/bin/bash
#SBATCH --partition=ubcml
#SBATCH --gres=gpu:1
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=5
#SBATCH --time=00-08:00     # time (DD-HH:MM)
#SBATCH --array=0-24
cd FunctionalStochasticOptimization
conda activate ubcml
wandb online
if [ $SLURM_ARRAY_TASK_ID -eq 0 ]
then
    python main.py --min_epochs=50 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1 ]
then
    python main.py --min_epochs=50 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2 ]
then
    python main.py --min_epochs=50 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 3 ]
then
    python main.py --min_epochs=50 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 4 ]
then
    python main.py --min_epochs=50 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 5 ]
then
    python main.py --min_epochs=50 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 6 ]
then
    python main.py --min_epochs=50 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 7 ]
then
    python main.py --min_epochs=50 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 8 ]
then
    python main.py --min_epochs=50 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 9 ]
then
    python main.py --min_epochs=50 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 10 ]
then
    python main.py --min_epochs=50 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 11 ]
then
    python main.py --min_epochs=50 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 12 ]
then
    python main.py --min_epochs=50 --algo=Adagrad --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 13 ]
then
    python main.py --min_epochs=50 --algo=Adagrad --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 14 ]
then
    python main.py --min_epochs=50 --algo=Adagrad --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 15 ]
then
    python main.py --min_epochs=50 --algo=Adagrad --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 16 ]
then
    python main.py --min_epochs=50 --algo=Adagrad --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 17 ]
then
    python main.py --min_epochs=50 --algo=Adagrad --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 18 ]
then
    python main.py --min_epochs=50 --algo=Adagrad --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 19 ]
then
    python main.py --min_epochs=50 --algo=Adagrad --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 20 ]
then
    python main.py --min_epochs=50 --algo=Adagrad --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 21 ]
then
    python main.py --min_epochs=50 --algo=Adagrad --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 22 ]
then
    python main.py --min_epochs=50 --algo=Adagrad --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 23 ]
then
    python main.py --min_epochs=50 --algo=Adagrad --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=1 --c=0.5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/stoch_setting/baseline.yaml
fi
exit
