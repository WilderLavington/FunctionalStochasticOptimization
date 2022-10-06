#!/bin/bash
#SBATCH --account=def-fwood
#SBATCH --gres=gpu:1
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=5
#SBATCH --time=00-08:00     # time (DD-HH:MM)
#SBATCH --array=0-288
cd /home/wilder1/scratch/FunctionalStochasticOptimization
wandb offline
if [ $SLURM_ARRAY_TASK_ID -eq 0 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 2 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 3 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 4 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 5 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 6 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 7 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 8 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 9 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 10 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 11 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 12 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 13 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 14 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 15 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 16 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 17 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 18 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 19 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 20 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 21 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 22 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 23 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 24 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 25 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 26 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 27 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 28 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 29 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 30 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 31 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 32 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 33 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 34 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 35 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 36 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 37 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 38 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 39 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 40 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 41 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 42 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 43 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 44 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 45 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 46 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 47 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 48 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 49 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 50 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 51 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 52 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 53 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 54 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 55 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 56 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 57 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 58 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 59 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 60 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 61 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 62 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 63 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 64 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 65 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 66 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 67 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 68 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 69 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 70 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 71 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 72 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 73 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 74 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 75 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 76 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 77 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 78 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 79 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 80 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 81 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 82 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 83 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 84 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 85 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 86 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 87 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 88 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 89 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 90 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 91 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 92 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 93 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 94 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 95 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 96 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 97 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 98 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 99 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 100 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 101 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 102 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 103 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 104 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 105 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 106 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 107 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 108 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 109 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 110 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 111 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 112 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 113 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 114 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 115 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 116 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 117 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 118 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 119 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 120 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 121 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 122 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 123 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 124 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 125 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 126 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 127 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 128 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 129 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 130 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 131 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 132 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 133 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 134 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 135 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 136 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 137 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 138 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 139 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 140 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 141 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 142 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 143 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 144 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 145 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 146 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 147 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 148 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 149 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 150 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 151 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 152 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 153 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 154 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 155 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 156 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 157 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 158 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 159 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 160 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 161 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 162 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 163 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 164 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 165 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 166 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 167 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 168 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 169 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 170 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 171 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 172 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 173 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 174 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 175 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 176 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 177 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 178 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 179 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 180 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 181 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 182 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 183 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 184 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 185 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 186 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 187 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 188 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 189 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 190 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 191 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 192 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 193 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 194 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 195 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 196 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 197 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 198 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 199 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 200 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 201 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 202 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 203 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 204 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 205 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 206 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 207 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 208 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 209 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 210 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 211 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 212 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 213 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 214 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 215 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=5 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 216 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 217 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 218 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 219 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 220 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 221 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 222 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 223 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 224 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 225 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 226 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 227 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 228 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 229 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 230 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 231 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 232 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 233 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 234 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 235 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 236 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 237 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 238 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 239 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=25 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 240 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 241 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 242 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 243 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 244 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 245 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 246 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 247 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 248 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 249 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 250 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 251 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 252 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 253 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 254 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 255 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 256 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 257 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 258 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 259 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 260 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 261 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 262 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 263 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=125 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 264 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 265 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 266 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 267 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 268 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 269 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=1 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 270 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 271 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 272 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 273 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 274 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 275 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=5 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 276 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 277 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 278 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 279 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 280 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 281 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=10 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 282 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 283 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 284 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 285 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 286 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=ijcnn --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
if [ $SLURM_ARRAY_TASK_ID -eq 287 ]
then
    python main.py --min_epochs=500 --algo=Online_Newton_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --outer_c=0.5 --m=20 --label=workshop-fig1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=rcv1 --eta_schedule=constant --group=AIstats_narval --log_dir=./wandb./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml
fi
exit
