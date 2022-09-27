
# simple checks
# python manual_sweep.py --yaml_file=configs/reality_check/funcopt.yaml --job_name=01
# python manual_sweep.py --yaml_file=configs/reality_check/baselines.yaml --job_name=02

# optimal stepsize checks
# python manual_sweep.py --yaml_file=configs/svmlib/optimal_stepsize/fullbatch/funcopt.yaml --job_name=1
# python manual_sweep.py --yaml_file=configs/svmlib/optimal_stepsize/minibatch/funcopt.yaml --job_name=2
python manual_sweep.py --yaml_file=configs/svmlib/optimal_stepsize/fullbatch/baselines.yaml --job_name=3
python manual_sweep.py --yaml_file=configs/svmlib/optimal_stepsize/minibatch/baselines.yaml --job_name=4

# gridsearch checks
python manual_sweep.py --yaml_file=configs/svmlib/gridsearch/fullbatch/funcopt.yaml --job_name=5
python manual_sweep.py --yaml_file=configs/svmlib/gridsearch/minibatch/funcopt.yaml --job_name=6
python manual_sweep.py --yaml_file=configs/svmlib/gridsearch/fullbatch/baselines.yaml --job_name=7
python manual_sweep.py --yaml_file=configs/svmlib/gridsearch/minibatch/baselines.yaml --job_name=8

# optimal stepsize checks
# python manual_sweep.py --yaml_file=configs/mfac/optimal_stepsize/fullbatch/funcopt.yaml --job_name=9
# python manual_sweep.py --yaml_file=configs/mfac/optimal_stepsize/minibatch/funcopt.yaml --job_name=10
# python manual_sweep.py --yaml_file=configs/mfac/optimal_stepsize/fullbatch/baselines.yaml --job_name=11
# python manual_sweep.py --yaml_file=configs/mfac/optimal_stepsize/minibatch/baselines.yaml --job_name=12

# gridsearch checks
python manual_sweep.py --yaml_file=configs/mfac/gridsearch/fullbatch/funcopt.yaml --job_name=13
python manual_sweep.py --yaml_file=configs/mfac/gridsearch/minibatch/funcopt.yaml --job_name=14
python manual_sweep.py --yaml_file=configs/mfac/gridsearch/fullbatch/baselines.yaml --job_name=15
python manual_sweep.py --yaml_file=configs/mfac/gridsearch/minibatch/baselines.yaml --job_name=16

# optimal stepsize checks
python manual_sweep.py --yaml_file=configs/mnist/optimal_stepsize/fullbatch/funcopt.yaml --job_name=17
python manual_sweep.py --yaml_file=configs/mnist/optimal_stepsize/minibatch/funcopt.yaml --job_name=18
python manual_sweep.py --yaml_file=configs/mnist/optimal_stepsize/fullbatch/baselines.yaml --job_name=19
python manual_sweep.py --yaml_file=configs/mnist/optimal_stepsize/minibatch/baselines.yaml --job_name=20

# gridsearch checks
python manual_sweep.py --yaml_file=configs/mnist/gridsearch/fullbatch/funcopt.yaml --job_name=21
python manual_sweep.py --yaml_file=configs/mnist/gridsearch/minibatch/funcopt.yaml --job_name=22
python manual_sweep.py --yaml_file=configs/mnist/gridsearch/fullbatch/baselines.yaml --job_name=23
python manual_sweep.py --yaml_file=configs/mnist/gridsearch/minibatch/baselines.yaml --job_name=24
