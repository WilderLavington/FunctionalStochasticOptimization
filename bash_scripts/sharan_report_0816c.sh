
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816c.yaml

# wandb infoS
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816a.yaml
wandb: Created sweep with ID: 4ang73m3
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/4ang73m3
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/4ang73m3

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/4ang73m3

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/4ang73m3' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/4ang73m3' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1

# theoretical + default
set L= max_i norm(X_iTX_i) where i= example (SGD+MSE)
set L= 1/4 * max_i norm(X_i^TX_i) where i= example (SGD+BCE)
set L = 1 for (FuncOp+MSE)
set L = 0.25 for (FuncOp+BCE)
defualt Adam

# grid-search
b = 10
sls + sgd

batchsize 10

kernals
