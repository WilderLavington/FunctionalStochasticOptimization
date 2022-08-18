
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816c.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816a.yaml
wandb: Created sweep with ID: h8upkflt
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalOptimization/sweeps/h8upkflt
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalOptimization/h8upkflt

# run local
wandb agent wilderlavington/FunctionalOptimization/h8upkflt

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 25 wilderlavington/FunctionalOptimization/h8upkflt' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 25 wilderlavington/FunctionalOptimization/h8upkflt' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
