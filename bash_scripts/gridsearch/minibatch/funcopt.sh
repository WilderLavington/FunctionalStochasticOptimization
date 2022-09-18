
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/gridsearch/minibatch/funcopt.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/gridsearch/minibatch/funcopt.yaml
wandb: Created sweep with ID: biroarwi
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/biroarwi
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/biroarwi

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/biroarwi

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/biroarwi' --machine='borg' --time='00-08:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/biroarwi' --machine='ubcml' --time='00-08:00' --account='ubcml' \
--num=1
