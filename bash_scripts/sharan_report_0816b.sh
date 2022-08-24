
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816b.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816b.yaml
wandb: Created sweep with ID: 3rwwmfig
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/3rwwmfig
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/3rwwmfig

# run local
wandb agent wilderlavington/FunctionalOptimization/3rwwmfig

# run on borg
python sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 25  wilderlavington/FunctionalStochasticOptimization/3rwwmfig' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent  --count 25  wilderlavington/FunctionalStochasticOptimization/3rwwmfig' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
