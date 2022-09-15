
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0915.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0915.yaml
wandb: Created sweep with ID: r65f0p7b
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/r65f0p7b
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/r65f0p7b

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/r65f0p7b

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/r65f0p7b' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/r65f0p7b' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1
