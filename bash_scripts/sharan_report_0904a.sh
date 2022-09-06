
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0904a.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0904a.yaml
wandb: Created sweep with ID: l9x8gji5
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/l9x8gji5
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/l9x8gji5

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/l9x8gji5

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/l9x8gji5' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/l9x8gji5' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
