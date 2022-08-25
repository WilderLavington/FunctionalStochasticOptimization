
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816a.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816a.yaml
wandb: Created sweep with ID: j3v65m4s
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/j3v65m4s
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/j3v65m4s

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/j3v65m4s

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 25 wilderlavington/FunctionalStochasticOptimization/j3v65m4s' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 25 wilderlavington/FunctionalStochasticOptimization/j3v65m4s' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1

# plotting code
python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
--batch_size=100 --y=grad_norm --dataset_name=mushrooms --func_only=0 --fig_name=1
python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
--batch_size=100 --y=grad_norm --dataset_name=ijcnn --func_only=0 --fig_name=2
python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
--batch_size=100 --y=grad_norm --dataset_name=mushrooms --func_only=0 --fig_name=3
python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
--batch_size=100 --y=grad_norm --dataset_name=ijcnn --func_only=0 --fig_name=4
