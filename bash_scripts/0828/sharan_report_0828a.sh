
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0828a.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0828a.yaml
wandb: Created sweep with ID: 7y8rqnjw
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/7y8rqnjw
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/7y8rqnjw

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/7y8rqnjw

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/7y8rqnjw' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/7y8rqnjw' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
