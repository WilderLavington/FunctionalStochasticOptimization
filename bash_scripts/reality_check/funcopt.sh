
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/reality_check/funcopt.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/reality_check/funcopt.yaml
wandb: Created sweep with ID: i6835axd
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/i6835axd
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/i6835axd


# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/i6835axd

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/i6835axd' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/i6835axd' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1

python  sweep_runner.py --directory='/home/wilder1/scratch/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/i6835axd' --machine='cedar' --time='00-08:00' --account='def-fwood' \
--num=1
