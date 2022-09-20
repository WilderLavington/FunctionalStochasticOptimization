
# simple checks
# python manual_sweep.py --yaml_file=configs/reality_check/funcopt.yaml
# python manual_sweep.py --yaml_file=configs/reality_check/baselines.yaml

# optimal stepsize checks
python manual_sweep.py --yaml_file=configs/svmlib/optimal_stepsize/fullbatch/funcopt.yaml
python manual_sweep.py --yaml_file=configs/svmlib/optimal_stepsize/minibatch/funcopt.yaml
python manual_sweep.py --yaml_file=configs/svmlib/optimal_stepsize/fullbatch/baselines.yaml
python manual_sweep.py --yaml_file=configs/svmlib/optimal_stepsize/minibatch/baselines.yaml

# gridsearch checks
python manual_sweep.py --yaml_file=configs/svmlib/gridsearch/fullbatch/funcopt.yaml
python manual_sweep.py --yaml_file=configs/svmlib/gridsearch/minibatch/funcopt.yaml
python manual_sweep.py --yaml_file=configs/svmlib/gridsearch/fullbatch/baselines.yaml
python manual_sweep.py --yaml_file=configs/svmlib/gridsearch/minibatch/baselines.yaml

# optimal stepsize checks
python manual_sweep.py --yaml_file=configs/mfac/optimal_stepsize/fullbatch/funcopt.yaml
python manual_sweep.py --yaml_file=configs/mfac/optimal_stepsize/minibatch/funcopt.yaml
python manual_sweep.py --yaml_file=configs/mfac/optimal_stepsize/fullbatch/baselines.yaml
python manual_sweep.py --yaml_file=configs/mfac/optimal_stepsize/minibatch/baselines.yaml

# gridsearch checks
python manual_sweep.py --yaml_file=configs/mfac/gridsearch/fullbatch/funcopt.yaml
python manual_sweep.py --yaml_file=configs/mfac/gridsearch/minibatch/funcopt.yaml
python manual_sweep.py --yaml_file=configs/mfac/gridsearch/fullbatch/baselines.yaml
python manual_sweep.py --yaml_file=configs/mfac/gridsearch/minibatch/baselines.yaml

# optimal stepsize checks
python manual_sweep.py --yaml_file=configs/mnist/optimal_stepsize/fullbatch/funcopt.yaml
python manual_sweep.py --yaml_file=configs/mnist/optimal_stepsize/minibatch/funcopt.yaml
python manual_sweep.py --yaml_file=configs/mnist/optimal_stepsize/fullbatch/baselines.yaml
python manual_sweep.py --yaml_file=configs/mnist/optimal_stepsize/minibatch/baselines.yaml

# gridsearch checks
python manual_sweep.py --yaml_file=configs/mnist/gridsearch/fullbatch/funcopt.yaml
python manual_sweep.py --yaml_file=configs/mnist/gridsearch/minibatch/funcopt.yaml
python manual_sweep.py --yaml_file=configs/mnist/gridsearch/fullbatch/baselines.yaml
python manual_sweep.py --yaml_file=configs/mnist/gridsearch/minibatch/baselines.yaml
