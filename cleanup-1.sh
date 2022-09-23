#!/bin/bash
#SBATCH --account=ubcml
#SBATCH --gres=gpu:1
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=5
#SBATCH --time=00-08:00     # time (DD-HH:MM)
#SBATCH --array=0-9
cd /ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization
conda activate ubcml
if [ $SLURM_ARRAY_TASK_ID -eq 0 ]
then
    main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1 ]
then
    main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 1 ]
then
    main.py --min_epochs=500 --algo=Adagrad --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 4 ]
then
    main.py --min_epochs=500 --algo=Adam --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 5 ]
then
    main.py --min_epochs=500 --algo=Adam --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 6 ]
then
    main.py --min_epochs=500 --algo=Adam--normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 7 ]
then
    main.py --min_epochs=500 --algo=Sadagrad --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 8 ]
then
    main.py --min_epochs=500 --algo=Sadagrad --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 9 ]
then
    main.py --min_epochs=500 --algo=Sadagrad--normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 10 ]
then
    main.py --min_epochs=500 --algo=SGD --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 11 ]
then
    main.py --min_epochs=500 --algo=SGD --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 12 ]
then
    main.py --min_epochs=500 --algo=SGD--normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 13 ]
then
    main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 14 ]
then
    main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval
fi
if [ $SLURM_ARRAY_TASK_ID -eq 15 ]
then
    main.py --min_epochs=500 --algo=LSOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=rcv1 --c=0.5 --eta_schedule=constant --group=narval

fi
exit
