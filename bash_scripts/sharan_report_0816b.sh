
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816b.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816b.yaml
wandb: Created sweep with ID: b89yp1k6
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/b89yp1k6
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/b89yp1k6

# run local
wandb agent wandb agent wilderlavington/FunctionalStochasticOptimization/b89yp1k6

# run on borg
python sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 250  wilderlavington/FunctionalStochasticOptimization/b89yp1k6' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent  --count 250  wilderlavington/FunctionalStochasticOptimization/b89yp1k6' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
