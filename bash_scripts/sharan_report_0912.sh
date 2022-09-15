
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0912.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0912.yaml
wandb: Created sweep with ID: sy49ef90
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/sy49ef90
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/sy49ef90

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/sy49ef90

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/sy49ef90' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/sy49ef90' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1
