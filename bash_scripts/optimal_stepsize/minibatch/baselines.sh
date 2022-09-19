
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/optimal_stepsize/minibatch/baselines.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/optimal_stepsize/minibatch/baselines.yaml
wandb: Created sweep with ID: sc8y8vs5
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/sc8y8vs5
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/sc8y8vs5

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/sc8y8vs5

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/sc8y8vs5' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/sc8y8vs5' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1

python  sweep_runner.py --directory='/home/wilder1/scratch/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/sc8y8vs5' --machine='cedar' --time='00-08:00' --account='def-fwood' \
--num=1
