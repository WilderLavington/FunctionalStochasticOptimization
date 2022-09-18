
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/optimal_stepsize/fullbatch/baselines.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/optimal_stepsize/fullbatch/baselines.yaml
wandb: Created sweep with ID: n5ot5esw
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/n5ot5esw
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/n5ot5esw

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/n5ot5esw

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/n5ot5esw' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/n5ot5esw' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1
