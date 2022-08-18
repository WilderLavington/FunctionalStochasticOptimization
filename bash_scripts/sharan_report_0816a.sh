
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816a.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816a.yaml
wandb: Created sweep with ID: ye5sfejf
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalOptimization/sweeps/ye5sfejf
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalOptimization/ye5sfejf

# run local
wandb agent wilderlavington/FunctionalOptimization/ye5sfejf

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent wilderlavington/FunctionalOptimization/ye5sfejf' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent wilderlavington/FunctionalOptimization/ye5sfejf' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
