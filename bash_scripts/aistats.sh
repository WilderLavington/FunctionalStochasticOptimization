
# SGD - constant
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SGD/optimal_stepsize/constant/fullbatch/baselines.yaml --job_name=fig_1a
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SGD/optimal_stepsize/constant/minibatch/baselines.yaml --job_name=fig_1b
# SGD - exponential
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SGD/optimal_stepsize/exponential/fullbatch/baselines.yaml --job_name=fig_1c
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SGD/optimal_stepsize/exponential/minibatch/baselines.yaml --job_name=fig_1d
# SGD - stochastic
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SGD/optimal_stepsize/stochastic/fullbatch/baselines.yaml --job_name=fig_1e
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SGD/optimal_stepsize/stochastic/minibatch/baselines.yaml --job_name=fig_1f

# SSO - constant
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SGD_FMDOpt/optimal_stepsize/constant/fullbatch/funcopt.yaml --job_name=fig_2a
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SGD_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml --job_name=fig_2b
# SSO - exponential
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SGD_FMDOpt/optimal_stepsize/exponential/fullbatch/funcopt.yaml --job_name=fig_2c
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SGD_FMDOpt/optimal_stepsize/exponential/minibatch/funcopt.yaml --job_name=fig_2d
# SSO - stochastic
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SGD_FMDOpt/optimal_stepsize/stochastic/fullbatch/funcopt.yaml --job_name=fig_2e
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SGD_FMDOpt/optimal_stepsize/stochastic/minibatch/funcopt.yaml --job_name=fig_2f

# SLS - constant
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SLS/optimal_stepsize/constant/fullbatch/baselines.yaml --job_name=fig_3a
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SLS/optimal_stepsize/constant/minibatch/baselines.yaml --job_name=fig_3b
# SLS - exponential
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SLS/optimal_stepsize/exponential/fullbatch/baselines.yaml --job_name=fig_3c
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SLS/optimal_stepsize/exponential/minibatch/baselines.yaml --job_name=fig_3d
# SLS - stochastic
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/fullbatch/baselines.yaml --job_name=fig_3e
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SLS/optimal_stepsize/stochastic/minibatch/baselines.yaml --job_name=fig_3f

# SLS-SSO - constant
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SLS_FMDOpt/optimal_stepsize/constant/fullbatch/funcopt.yaml --job_name=fig_4a
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SLS_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml --job_name=fig_4b
# SLS-SSO - exponential
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SLS_FMDOpt/optimal_stepsize/exponential/fullbatch/funcopt.yaml --job_name=fig_4c
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SLS_FMDOpt/optimal_stepsize/exponential/minibatch/funcopt.yaml --job_name=fig_4d
# SLS-SSO - stochastic
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SLS_FMDOpt/optimal_stepsize/stochastic/fullbatch/funcopt.yaml --job_name=fig_4e
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/SLS_FMDOpt/optimal_stepsize/stochastic/minibatch/funcopt.yaml --job_name=fig_4f

# Sadagrad - constant
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/Sadagrad/optimal_stepsize/constant/fullbatch/baselines.yaml --job_name=fig_5a
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/Sadagrad/optimal_stepsize/constant/minibatch/baselines.yaml --job_name=fig_5b

# Sadagrad-SSO - constant
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/Ada_FMDOpt/optimal_stepsize/constant/fullbatch/funcopt.yaml --job_name=fig_6a
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/Ada_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml --job_name=fig_6b

# Adagrad - constant
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/fullbatch/baselines.yaml --job_name=fig_7a
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/Adagrad/optimal_stepsize/constant/minibatch/baselines.yaml --job_name=fig_7b

# Adagrad-SSO - constant
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/Diag_Ada_FMDOpt/optimal_stepsize/constant/fullbatch/funcopt.yaml --job_name=fig_8a
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/Diag_Ada_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml --job_name=fig_8b

# ON-SSO - constant
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/fullbatch/funcopt.yaml --job_name=fig_9a
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/Online_Newton_FMDOpt/optimal_stepsize/constant/minibatch/funcopt.yaml --job_name=fig_9b

# adam - constant
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/Adam/optimal_stepsize/constant/fullbatch/baselines.yaml --job_name=fig_9c
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/Adam/optimal_stepsize/constant/minibatch/baselines.yaml --job_name=fig_9d

# gulf2 - constant
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/GULF2/optimal_stepsize/constant/fullbatch/baselines.yaml --job_name=fig_9e
python offline_dir_sweep.py --yaml_file=./configs/aistats/svmlib/GULF2/optimal_stepsize/constant/minibatch/baselines.yaml --job_name=fig_9f

# MFAC
python offline_dir_sweep.py --yaml_file=./configs/aistats/mfac/gridsearch/minibatch/funcopt.yaml --job_name=fig_10a
python offline_dir_sweep.py --yaml_file=./configs/aistats/mfac/gridsearch/minibatch/baselines.yaml --job_name=fig_10b
python offline_dir_sweep.py --yaml_file=./configs/aistats/mfac/gridsearch/fullbatch/funcopt.yaml --job_name=fig_10c
python offline_dir_sweep.py --yaml_file=./configs/aistats/mfac/gridsearch/fullbatch/baselines.yaml --job_name=fig_10d

# Atari-gridsearch
python offline_dir_sweep.py --yaml_file=./configs/aistats/atari/baselines.yaml --job_name=fig_11a
python offline_dir_sweep.py --yaml_file=./configs/aistats/atari/funcopt.yaml --job_name=fig_11b

# mujoco
python offline_dir_sweep.py --yaml_file=./configs/aistats/mujoco/linear/funcopt.yaml --job_name=fig_12a
python offline_dir_sweep.py --yaml_file=./configs/aistats/mujoco/linear/baselines.yaml --job_name=fig_12b
python offline_dir_sweep.py --yaml_file=./configs/aistats/mujoco/nn/funcopt.yaml --job_name=fig_12c
python offline_dir_sweep.py --yaml_file=./configs/aistats/mujoco/nn/baselines.yaml --job_name=fig_12d

# fully stochastic setting
python offline_dir_sweep.py --yaml_file=./configs/aistats/stoch_setting/funcopt.yaml --job_name=fig_13a
python offline_dir_sweep.py --yaml_file=./configs/aistats/stoch_setting/baseline.yaml --job_name=fig_13b
python offline_dir_sweep.py --yaml_file=./configs/aistats/stoch_setting/funcopt1.yaml --job_name=fig_13c
