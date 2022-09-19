
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/gridsearch/minibatch/baselines.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/gridsearch/minibatch/baselines.yaml
wandb: Created sweep with ID: rq9h6mgx
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/rq9h6mgx
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/rq9h6mgx

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/rq9h6mgx

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/rq9h6mgx' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/rq9h6mgx' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1

# cedar
python  sweep_runner.py --directory='/home/wilder1/scratch/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/2udh469e' --machine='cedar' --time='00-08:00' --account='def-fwood' \
--num=1
