
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0903a.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0903a.yaml
wandb: Created sweep with ID: 1b4bnttg
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/1b4bnttg
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/1b4bnttg

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/1b4bnttg

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/1b4bnttg' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/1b4bnttg' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
