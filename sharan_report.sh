
# L2 compute
python main.py --algo=SGD --loss=MSELoss --episodes=1000 --batch_size=1
python main.py --algo=Adam --loss=MSELoss --episodes=1000 --batch_size=1
python main.py --algo=Adagrad --loss=MSELoss --episodes=1000 --batch_size=1
python main.py --algo=SGD_FMDOpt --loss=MSELoss --m=1 --episodes=100 --batch_size=1
python main.py --algo=SGD_FMDOpt --loss=MSELoss --m=2 --episodes=100 --batch_size=1
python main.py --algo=SGD_FMDOpt --loss=MSELoss --m=3 --episodes=100 --batch_size=1
python main.py --algo=SGD_FMDOpt --loss=MSELoss --m=4 --episodes=100 --batch_size=1
python main.py --algo=SGD_FMDOpt --loss=MSELoss --m=5 --episodes=100 --batch_size=1

# L2 plots
python plotting.py  --x=optim_steps --y=avg_loss --func_plot=1 \
       --max_steps=8000 --loss=MSELoss --fig_name='plots/MSE+loss+iter.pdf'
python plotting.py -x=optim_steps --y=grad_norm --func_plot=1 \
              --max_steps=8000 --loss=MSELoss --fig_name='plots/MSE+norm+iter.pdf'
python plotting.py  --x=function_evals --y=avg_loss --func_plot=1 \
       --max_steps=8000 --loss=MSELoss --fig_name='plots/MSE+loss+func.pdf'
python plotting.py -x=function_evals --y=grad_norm --func_plot=1 \
              --max_steps=8000 --loss=MSELoss --fig_name='plots/MSE+norm+func.pdf'
python plotting.py   --x=grad_evals --y=avg_loss --func_plot=1 \
       --max_steps=8000 --loss=MSELoss --fig_name='plots/MSE+loss+grad.pdf'
python plotting.py -x=grad_evals --y=grad_norm --func_plot=1 \
              --max_steps=8000 --loss=MSELoss --fig_name='plots/MSE+norm+grad.pdf'

# Logistic compute
python main.py --algo=SGD --loss=CrossEntropyLoss --episodes=1000 --batch_size=1
python main.py --algo=Adam --loss=CrossEntropyLoss --episodes=1000 --batch_size=1
python main.py --algo=Adagrad --loss=CrossEntropyLoss --episodes=1000 --batch_size=1
python main.py --algo=SGD_FMDOpt --loss=CrossEntropyLoss --m=1 --episodes=100 --batch_size=1
python main.py --algo=SGD_FMDOpt --loss=CrossEntropyLoss --m=2 --episodes=100 --batch_size=1
python main.py --algo=SGD_FMDOpt --loss=CrossEntropyLoss --m=3 --episodes=100 --batch_size=1
python main.py --algo=SGD_FMDOpt --loss=CrossEntropyLoss --m=4 --episodes=100 --batch_size=1
python main.py --algo=SGD_FMDOpt --loss=CrossEntropyLoss --m=5 --episodes=100 --batch_size=1

# Logistic plot
python plotting.py  --x=optim_steps --y=avg_loss --func_plot=1 \
       --max_steps=8000 --loss=CrossEntropyLoss --fig_name='plots/CEL+loss+iter.pdf'
python plotting.py -x=optim_steps --y=grad_norm --func_plot=1 \
              --max_steps=8000 --loss=CrossEntropyLoss --fig_name='plots/CEL+norm+iter.pdf'
python plotting.py  --x=function_evals --y=avg_loss --func_plot=1 \
       --max_steps=8000 --loss=CrossEntropyLoss --fig_name='plots/CEL+loss+func.pdf'
python plotting.py -x=function_evals --y=grad_norm --func_plot=1 \
              --max_steps=8000 --loss=CrossEntropyLoss --fig_name='plots/CEL+norm+func.pdf'
python plotting.py   --x=grad_evals --y=avg_loss --func_plot=1 \
       --max_steps=8000 --loss=CrossEntropyLoss --fig_name='plots/CEL+loss+grad.pdf'
python plotting.py -x=grad_evals --y=grad_norm --func_plot=1 \
              --max_steps=8000 --loss=CrossEntropyLoss --fig_name='plots/CEL+norm+grad.pdf'
