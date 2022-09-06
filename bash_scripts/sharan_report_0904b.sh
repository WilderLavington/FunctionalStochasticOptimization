
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0904b.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0904b.yaml
wandb: Created sweep with ID: ijsmzrdx
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/ijsmzrdx
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/ijsmzrdx

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/ijsmzrdx

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/ijsmzrdx' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/ijsmzrdx' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
