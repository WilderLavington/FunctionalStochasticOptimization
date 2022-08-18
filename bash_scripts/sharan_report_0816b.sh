
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816b.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816b.yaml
wandb: Created sweep with ID: dsh7wrt8
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalOptimization/sweeps/j63bccrj
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalOptimization/j63bccrj

# run local
wandb agent wilderlavington/FunctionalOptimization/dsh7wrt8

# run on borg
python sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 25 wilderlavington/FunctionalOptimization/j63bccrj' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent  --count 25 wilderlavington/FunctionalOptimization/j63bccrj' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
