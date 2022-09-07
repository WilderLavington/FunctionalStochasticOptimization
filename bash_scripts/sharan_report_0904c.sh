
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0904c.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0904c.yaml
wandb: Created sweep with ID: hk7t69nt
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/hk7t69nt
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/hk7t69nt

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/hk7t69nt

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/hk7t69nt' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/hk7t69nt' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
