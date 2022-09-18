
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/gridsearch/fullbatch/baselines.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/gridsearch/fullbatch/baselines.yaml
wandb: Created sweep with ID: dp3u76fv
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/dp3u76fv
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/dp3u76fv

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/dp3u76fv

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/dp3u76fv' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/dp3u76fv' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1
