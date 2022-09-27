python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=3 --fullbatch=0 --batch_size=625 --m=5 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=stochastic --group=narval' \
--machine='borg' --time='00-08:00' --account='plai' --num=1
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=1 --fullbatch=0 --batch_size=625 --m=1 --use_optimal_stepsize=1 --loss=MSELoss --dataset_name=mushrooms --eta_schedule=stochastic --group=narval' \
--machine='borg' --time='00-08:00' --account='plai' --num=1
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='python main.py --min_epochs=500 --algo=SGD_FMDOpt --normalize_epochs_lengths=1 --seed=2 --fullbatch=0 --batch_size=625 --m=1 --use_optimal_stepsize=1 --loss=BCEWithLogitsLoss --dataset_name=mushrooms --eta_schedule=exponential --group=narval' \
--machine='borg' --time='00-08:00' --account='plai' --num=1
