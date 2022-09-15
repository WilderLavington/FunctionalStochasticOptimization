
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0908.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0908.yaml
wandb: Created sweep with ID: 98c6c6ck
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/98c6c6ck
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/98c6c6ck

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/98c6c6ck

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/98c6c6ck' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/98c6c6ck' --machine='ubcml' --time='00-07:00' --account='ubcml' \
--num=1
