###############################################################################
# Hypothesis # 1
# Do we get strict improvement in terms of outer optimization steps? using the
# functional optimizer (not-gridsearched)

# mushrooms dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=25 --y=grad_norm --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h1-mushrooms+25+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=25 --y=grad_norm --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h1-mushrooms+25+mse'
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h1-mushrooms+125+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h1-mushrooms+125+mse'
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=625 --y=grad_norm --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h1-mushrooms+625+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h1-mushrooms+625+bce'
# ijcnn dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h1-ijcnn+25+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h1-ijcnn+25+mse'
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h1-ijcnn+125+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h1-ijcnn+125+mse'
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h1-ijcnn+625+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h1-ijcnn+625+bce'

## Yes, though not always initially, sometimes it take a bit for the algorithms
# to overtake there lower m counterparts

###############################################################################
# Hypothesis # 2
# are multiple steps worthwile in terms of progress (is m=1) best in terms of
# gradient evals metric (not-gridsearched)
# mushrooms dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=grad_evals \
    --batch_size=25 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h2-mushrooms+25+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=grad_evals \
    --batch_size=25 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h2-mushrooms+25+mse'
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=grad_evals \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h2-mushrooms+125+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=grad_evals \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h2-mushrooms+125+mse'
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=grad_evals \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h2-mushrooms+625+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=grad_evals \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h2-mushrooms+625+bce'
# ijcnn dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=grad_evals \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h2-ijcnn+25+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=grad_evals \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h2-ijcnn+25+mse'
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=grad_evals \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h2-ijcnn+125+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=grad_evals \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h2-ijcnn+125+mse'
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=grad_evals \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h2-ijcnn+625+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=grad_evals \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h2-ijcnn+625+bce'

## No

###############################################################################
# Hypothesis # 3
# are multiple steps worthwile in terms of progress (is m=1) best in terms of
# elapsed time (not-gridsearched)
# mushrooms dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=_runtime \
    --batch_size=25 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=1000000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h3-mushrooms+25+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h3-mushrooms+25+mse'
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h3-mushrooms+125+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h3-mushrooms+125+mse'
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h3-mushrooms+625+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h3-mushrooms+625+bce'
# ijcnn dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h3-ijcnn+25+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h3-ijcnn+25+mse'
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h3-ijcnn+125+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h3-ijcnn+125+mse'
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h3-ijcnn+625+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h3-ijcnn+625+bce'

###############################################################################
# Hypothesis # 4
# is the func-opt a better default optimizer (constant stepsize)
# mushrooms dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=1 \
    --fig_name='plots/h4-mushrooms+25+bce' --eta_schedule=constant
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=1 \
    --fig_name='plots/h4-mushrooms+25+mse' --eta_schedule=constant
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=1 \
    --fig_name='plots/h4-mushrooms+125+bce' --eta_schedule=constant
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=1 \
    --fig_name='plots/h4-mushrooms+125+mse' --eta_schedule=constant
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=1 \
    --fig_name='plots/h4-mushrooms+625+bce' --eta_schedule=constant
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=1 \
    --fig_name='plots/h4-mushrooms+625+bce' --eta_schedule=constant
# ijcnn dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=1 \
    --fig_name='plots/h4-ijcnn+25+bce' --eta_schedule=constant
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=1 \
    --fig_name='plots/h4-ijcnn+25+mse' --eta_schedule=constant
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=1 \
    --fig_name='plots/h4-ijcnn+125+bce' --eta_schedule=constant
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=1 \
    --fig_name='plots/h4-ijcnn+125+mse' --eta_schedule=constant
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=1 \
    --fig_name='plots/h4-ijcnn+625+bce' --eta_schedule=constant
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=1 \
    --fig_name='plots/h4-ijcnn+625+bce' --eta_schedule=constant

###############################################################################
# Hypothesis # 5
# is the func-opt a better default optimizer (stochastic stepsize)
# mushrooms dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=mushrooms \
    --max_steps=100000 --func_only=0 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h5-mushrooms+25+bce' --eta_schedule=stochastic
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=mushrooms \
    --max_steps=100000 --func_only=0 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h5-mushrooms+25+mse' --eta_schedule=stochastic
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms \
    --max_steps=100000 --func_only=0 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h5-mushrooms+125+bce' --eta_schedule=stochastic
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms \
    --max_steps=100000 --func_only=0 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h5-mushrooms+125+mse' --eta_schedule=stochastic
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms \
    --max_steps=100000 --func_only=0 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h5-mushrooms+625+bce' --eta_schedule=stochastic
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms \
    --max_steps=100000 --func_only=0 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h5-mushrooms+625+bce' --eta_schedule=stochastic
# ijcnn dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn \
    --max_steps=100000 --func_only=0 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h5-ijcnn+25+bce' --eta_schedule=stochastic
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn \
    --max_steps=100000 --func_only=0 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h5-ijcnn+25+mse' --eta_schedule=stochastic
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn \
    --max_steps=100000 --func_only=0 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h5-ijcnn+125+bce' --eta_schedule=stochastic
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn \
    --max_steps=100000 --func_only=0 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h5-ijcnn+125+mse' --eta_schedule=stochastic
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn \
    --max_steps=100000 --func_only=0 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h5-ijcnn+625+bce' --eta_schedule=stochastic
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn \
    --max_steps=100000 --func_only=0 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h5-ijcnn+625+bce' --eta_schedule=stochastic

###############################################################################
# Hypothesis # 6
# is func-opt better then sls (m=1 or otherwise)
# mushrooms dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h6-mushrooms+25+bce' --eta_schedule=constant
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h6-mushrooms+25+mse' --eta_schedule=constant
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h6-mushrooms+125+bce' --eta_schedule=constant
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h6-mushrooms+125+mse' --eta_schedule=constant
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h6-mushrooms+625+bce' --eta_schedule=constant
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h6-mushrooms+625+bce' --eta_schedule=constant
# ijcnn dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h6-ijcnn+25+bce' --eta_schedule=constant
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h6-ijcnn+25+mse' --eta_schedule=constant
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h6-ijcnn+125+bce' --eta_schedule=constant
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h6-ijcnn+125+mse' --eta_schedule=constant
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h6-ijcnn+625+bce' --eta_schedule=constant
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn --func_only=1 \
    --max_steps=100000 --func_only=1 --alter_baselines=0 --use_optimal_stepsize=1 \
    --fig_name='plots/h6-ijcnn+625+bce' --eta_schedule=constant


###############################################################################
# Hypothesis # 7
# If gridsearched, do any of the methods out-perform the others (elpased time)
# mushrooms dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h7-mushrooms+25+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h7-mushrooms+25+mse'
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h7-mushrooms+125+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h7-mushrooms+125+mse'
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h7-mushrooms+625+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h7-mushrooms+625+bce'
# ijcnn dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h7-ijcnn+25+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h7-ijcnn+25+mse'
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h7-ijcnn+125+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h7-ijcnn+125+mse'
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h7-ijcnn+625+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=time_elapsed \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h7-ijcnn+625+bce'

###############################################################################
# Hypothesis # 8
# If gridsearched, do any of the methods out-perform the others (optim-steps)
# mushrooms dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=25 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h8-mushrooms+25+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=25 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h8-mushrooms+25+mse'
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h8-mushrooms+125+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h8-mushrooms+125+mse'
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h8-mushrooms+625+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h8-mushrooms+625+bce'
# ijcnn dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h8-ijcnn+25+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h8-ijcnn+25+mse'
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h8-ijcnn+125+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h8-ijcnn+125+mse'
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h8-ijcnn+625+bce'
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h8-ijcnn+625+bce'

###############################################################################
# Hypothesis # 9
# Is Func-opt more robust then all other methods across learning rates
# mushrooms dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=25 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h9-mushrooms+25+bce' --create_sensetivity_table=1 --performance_plot=0
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=25 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h9-mushrooms+25+mse' --create_sensetivity_table=1 --performance_plot=0
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h9-mushrooms+125+bce' --create_sensetivity_table=1 --performance_plot=0
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=125 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h9-mushrooms+125+mse' --create_sensetivity_table=1 --performance_plot=0
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h9-mushrooms+625+bce' --create_sensetivity_table=1 --performance_plot=0
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=625 --y=avg_loss --dataset_name=mushrooms --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h9-mushrooms+625+bce' --create_sensetivity_table=1 --performance_plot=0
# ijcnn dataset
  # batch-size=25
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h9-ijcnn+25+bce' --create_sensetivity_table=1 --performance_plot=0
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=25 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h9-ijcnn+25+mse' --create_sensetivity_table=1 --performance_plot=0
  # batch-size=125
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h9-ijcnn+125+bce' --create_sensetivity_table=1 --performance_plot=0
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=125 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h9-ijcnn+125+mse' --create_sensetivity_table=1 --performance_plot=0
  # batch-size=625
    # loss = BCE
    python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=optim_steps \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h9-ijcnn+625+bce' --create_sensetivity_table=1 --performance_plot=0
    # loss = MSE
    python plotting.py --download_data=0 --loss=MSELoss --x=optim_steps \
    --batch_size=625 --y=avg_loss --dataset_name=ijcnn --func_only=0 \
    --max_steps=100000 --func_only=0 --alter_baselines=1 --use_optimal_stepsize=0 \
    --fig_name='plots/h9-ijcnn+625+bce' --create_sensetivity_table=1 --performance_plot=0

###
# do we get a better region of confusion with constant stepsize

###############################################################################
# Hypothesis # 9
# Is Func-opt more effient in over-parameterized models (default)

###############################################################################
# Hypothesis # 10
# Is Func-opt more effient in over-parameterized models (grid-searched)
