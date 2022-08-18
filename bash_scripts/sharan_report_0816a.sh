
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816a.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816a.yaml
wandb: Created sweep with ID: 86reayq8
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalOptimization/sweeps/86reayq8
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalOptimization/86reayq8

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/86reayq8

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 25 wilderlavington/FunctionalStochasticOptimization/86reayq8' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 25 wilderlavington/FunctionalStochasticOptimization/86reayq8' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1

# plotting code
python plotting.py --download_data=1 --loss=MSELoss --x='function_evals+grad_evals' --batch_size=100  \
  --y=grad_norm --dataset_name=mushrooms --fig_name='mushrooms+mse' --max_steps=100000 --c=0.001
python plotting.py --download_data=0 --loss=CrossEntropyLoss --x='function_evals+grad_evals' --batch_size=100  \
  --y=grad_norm --dataset_name=mushrooms --fig_name='mushrooms+cel' --max_steps=100000
python plotting.py --download_data=0 --loss=MSELoss --x='function_evals+grad_evals' --batch_size=100   \
  --y=grad_norm --dataset_name=ijcnn --fig_name='ijcnn+mse' --max_steps=50000 --c=0.001
python plotting.py --download_data=0 --loss=CrossEntropyLoss --x='function_evals+grad_evals' --batch_size=100  \
  --y=grad_norm --dataset_name=ijcnn --fig_name='ijcnn+cel' --max_steps=50000 --c=0.001
