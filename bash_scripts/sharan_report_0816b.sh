
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816b.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816b.yaml
wandb: Created sweep with ID: jbpt1sfg
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/jbpt1sfg
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/jbpt1sfg

# run local
wandb agent wilderlavington/FunctionalOptimization/48xy362d

# run on borg
python sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 25  wilderlavington/FunctionalStochasticOptimization/jbpt1sfg' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent  --count 25  wilderlavington/FunctionalStochasticOptimization/jbpt1sfg' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
