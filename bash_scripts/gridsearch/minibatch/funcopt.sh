
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/gridsearch/minibatch/funcopt.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/gridsearch/minibatch/funcopt.yaml
wandb: Created sweep with ID: 4eqptuul
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/4eqptuul
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/4eqptuul

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/4eqptuul

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/4eqptuul' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/4eqptuul' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1

# cedar
python  sweep_runner.py --directory='/home/wilder1/scratch/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/2udh469e' --machine='cedar' --time='00-08:00' --account='def-fwood' \
--num=1
