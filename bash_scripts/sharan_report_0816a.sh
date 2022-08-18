
# create sweep
wandb sweep /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816a.yaml

# wandb info
wandb: Creating sweep from: /home/wlavington/Desktop/FunctionalStochasticOptimization/configs/sharan_report0816a.yaml
wandb: Created sweep with ID: mob31ns3
wandb: View sweep at: https://wandb.ai/wilderlavington/FunctionalOptimization/sweeps/mob31ns3
wandb: Run sweep agent with: wandb agent wilderlavington/FunctionalOptimization/mob31ns3

# run local
wandb agent wilderlavington/FunctionalStochasticOptimization/lj9kdz3o

# run on borg
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 25 wilderlavington/FunctionalStochasticOptimization/lj9kdz3o' --machine='borg' --time='00-24:00' --account='plai' \
--num=1

# run on ubcml
python  sweep_runner.py --directory='/ubc/cs/research/plai-scratch/wlaving/FunctionalStochasticOptimization' \
--command='wandb agent --count 25 wilderlavington/FunctionalStochasticOptimization/lj9kdz3o' --machine='ubcml' --time='00-24:00' --account='ubcml' \
--num=1
