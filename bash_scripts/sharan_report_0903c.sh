
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0903c.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0903c.yaml
wandb: Created sweep with ID: eoubtfoh
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/eoubtfoh
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/eoubtfoh

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/eoubtfoh

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/eoubtfoh' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/eoubtfoh' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
