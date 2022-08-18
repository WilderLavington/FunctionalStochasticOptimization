
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816b.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816b.yaml
wandb: Created sweep with ID: dsh7wrt8
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalOptimization/sweeps/dsh7wrt8
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalOptimization/dsh7wrt8

# run local
wandb agent wilderlavington/FunctionalOptimization/dsh7wrt8git

# run on borg
python src/script_generation/sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent wilderlavington/FunctionalOptimization/dsh7wrt8' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python src/script_generation/sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent wilderlavington/FunctionalOptimization/dsh7wrt8' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
