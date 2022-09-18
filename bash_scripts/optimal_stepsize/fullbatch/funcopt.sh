
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/optimal_stepsize/fullbatch/funcopt.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/optimal_stepsize/fullbatch/funcopt.yaml
wandb: Created sweep with ID: a7dkmd3j
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/a7dkmd3j
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/a7dkmd3j

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/dkzzwr25

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/dkzzwr25' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/dkzzwr25' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1
