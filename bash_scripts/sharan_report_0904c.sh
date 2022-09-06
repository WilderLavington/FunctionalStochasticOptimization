
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0904c.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0904c.yaml
wandb: Created sweep with ID: jbuhe7ph
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/jbuhe7ph
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/jbuhe7ph

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/jbuhe7ph

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/jbuhe7ph' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/jbuhe7ph' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
