
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/gridsearch/minibatch/baselines.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/gridsearch/minibatch/baselines.yaml
wandb: Created sweep with ID: it7id6di
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/it7id6di
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/it7id6di

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/it7id6di

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/it7id6di' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/it7id6di' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1
