
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/optimal_stepsize/minibatch/funcopt.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/optimal_stepsize/minibatch/funcopt.yaml
wandb: Created sweep with ID: 2udh469e
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/2udh469e
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/2udh469e

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/2udh469e

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/2udh469e' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/2udh469e' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1
