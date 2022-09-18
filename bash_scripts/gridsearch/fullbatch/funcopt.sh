
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/gridsearch/fullbatch/funcopt.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/gridsearch/fullbatch/funcopt.yaml
wandb: Created sweep with ID: y7ps2gp0
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/y7ps2gp0
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/y7ps2gp0

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/y7ps2gp0

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/y7ps2gp0' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/y7ps2gp0' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1
