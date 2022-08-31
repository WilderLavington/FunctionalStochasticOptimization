
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0830a.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0830a.yaml
wandb: Created sweep with ID: 63ot6ubo
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/63ot6ubo
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/63ot6ubo

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/63ot6ubo

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/63ot6ubo' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/63ot6ubo' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
