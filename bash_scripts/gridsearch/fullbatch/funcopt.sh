
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/gridsearch/fullbatch/funcopt.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/gridsearch/fullbatch/funcopt.yaml
wandb: Created sweep with ID: mm9porke
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/mm9porke
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/mm9porke

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/mm9porke

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/mm9porke' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/mm9porke' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1

# cedar
python  sweep_runner.py --directory='/home/wilder1/scratch/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/2udh469e' --machine='cedar' --time='00-08:00' --account='def-fwood' \
--num=1
