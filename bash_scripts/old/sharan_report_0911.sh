
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0911.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0911.yaml
wandb: Created sweep with ID: s8s5bem0
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/s8s5bem0
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/s8s5bem0

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/s8s5bem0

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/s8s5bem0' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/s8s5bem0' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1
