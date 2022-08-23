
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816b.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816b.yaml
wandb: Created sweep with ID: ysc5ssqh
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/ysc5ssqh
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/ysc5ssqh

# run local
wandb agent wilderlavington/FunctionalOptimization/48xy362d

# run on borg
python sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 25  wilderlavington/FunctionalStochasticOptimization/ysc5ssqh' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent  --count 25  wilderlavington/FunctionalStochasticOptimization/ysc5ssqh' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
