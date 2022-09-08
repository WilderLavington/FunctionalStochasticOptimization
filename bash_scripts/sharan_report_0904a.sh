
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0904a.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0904a.yaml
wandb: Created sweep with ID: da7nr9en
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/da7nr9en
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/da7nr9en

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/da7nr9en

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/da7nr9en' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/da7nr9en' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
