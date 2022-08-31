
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0830a.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0830a.yaml
wandb: Created sweep with ID: i9iqa2b5
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalStochasticOptimization/sweeps/i9iqa2b5
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalStochasticOptimization/i9iqa2b5

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/i9iqa2b5

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/i9iqa2b5' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 500 wilderlavington/FunctionalStochasticOptimization/i9iqa2b5' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1


python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
  --batch_size=25 --y=grad_norm --dataset_name=mushrooms --func_only=1 \
  --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
  --fig_name='plots/h1-mushrooms+25+bce'
