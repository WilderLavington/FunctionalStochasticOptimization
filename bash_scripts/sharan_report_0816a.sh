
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816a.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816a.yaml
wandb: Created sweep with ID: guzm0mm9
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalOptimization/sweeps/guzm0mm9
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalOptimization/guzm0mm9

# run local
wandb agent wilderlavington/FunctionalOptimization/guzm0mm9

# run on borg
python src/script_generation/sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent wilderlavington/FunctionalOptimization/guzm0mm9' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python src/script_generation/sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent wilderlavington/FunctionalOptimization/guzm0mm9' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
