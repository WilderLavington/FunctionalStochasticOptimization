
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0830b.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0830b.yaml
wandb: Created sweep with ID: ph6aqna1
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/ph6aqna1
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/ph6aqna1

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/ph6aqna1

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/ph6aqna1' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/ph6aqna1' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
