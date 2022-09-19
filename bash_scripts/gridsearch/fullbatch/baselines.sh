
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/gridsearch/fullbatch/baselines.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/gridsearch/fullbatch/baselines.yaml
wandb: Created sweep with ID: umfnb9kg
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/umfnb9kg
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/umfnb9kg

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/umfnb9kg

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/umfnb9kg' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/umfnb9kg' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1

# cedar
python  sweep_runner.py --directory='/home/wilder1/scratch/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/umfnb9kg' --machine='cedar' --time='00-08:00' --account='def-fwood' \
--num=1
