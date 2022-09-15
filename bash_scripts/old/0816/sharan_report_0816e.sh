
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816e.yaml

# wandb infoS
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816e.yaml
wandb: Created sweep with ID: b40trohv
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/b40trohv
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/b40trohv

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/b40trohv

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/b40trohv' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/b40trohv' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
