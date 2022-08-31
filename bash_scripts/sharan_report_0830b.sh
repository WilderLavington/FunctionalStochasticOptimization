
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0830b.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0830b.yaml
wandb: Created sweep with ID: joi8k6io
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/joi8k6io
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/joi8k6io

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/joi8k6io

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/joi8k6io' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/joi8k6io' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
