
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/reality_check/baselines.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/reality_check/baselines.yaml
wandb: Created sweep with ID: iter6cuk
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/iter6cuk
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/iter6cuk

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/iter6cuk

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/iter6cuk' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/iter6cuk' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1

# run on cedar
python  sweep_runner.py --directory='/home/wilder1/scratch/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/iter6cuk' --machine='cedar' --time='00-08:00' --account='def-fwood' \
--num=1
