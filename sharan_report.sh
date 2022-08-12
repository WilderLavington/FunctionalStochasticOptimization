
# L2 plots
python main.py --algo=SGD --loss=MSELoss --episodes=1000
python main.py --algo=Adam --loss=MSELoss --episodes=1000
python main.py --algo=Adagrad --loss=MSELoss --episodes=1000
python main.py --algo=SGD_FMDOpt --loss=MSELoss --m=1 --episodes=100
python main.py --algo=SGD_FMDOpt --loss=MSELoss --m=2 --episodes=100
python main.py --algo=SGD_FMDOpt --loss=MSELoss --m=3 --episodes=100
python main.py --algo=SGD_FMDOpt --loss=MSELoss --m=4 --episodes=100
python main.py --algo=SGD_FMDOpt --loss=MSELoss --m=5 --episodes=100
# python plot.py --fig_name=loss-MSELoss-iter --x=optim_steps --y=avg_loss \
#        --max_steps=100 --loss=MSELoss --fig_name='MSE+loss+iter.png'
# python plot.py -x=optim_steps --y=grad_norm \
#               --max_steps=100 --loss=MSELoss --fig_name='MSE+norm+iter.png'
# python plot.py --fig_name=loss-MSELoss-iter --x=function_evals --y=avg_loss \
#        --max_steps=100 --loss=MSELoss --fig_name='MSE+loss+func.png'
# python plot.py -x=function_evals --y=grad_norm \
#               --max_steps=100 --loss=MSELoss --fig_name='MSE+norm+func.png'
# python plot.py --fig_name=loss-MSELoss-iter --x=grad_evals --y=avg_loss \
#        --max_steps=100 --loss=MSELoss --fig_name='MSE+loss+grad.png'
# python plot.py -x=grad_evals --y=grad_norm \
#               --max_steps=100 --loss=MSELoss --fig_name='MSE+norm+grad.png'
# Logistic plots
python main.py --algo=SGD --loss=CrossEntropyLoss --episodes=1000
python main.py --algo=Adam --loss=CrossEntropyLoss --episodes=1000
python main.py --algo=Adagrad --loss=CrossEntropyLoss --episodes=1000
python main.py --algo=SGD_FMDOpt --loss=CrossEntropyLoss --m=1 --episodes=100
python main.py --algo=SGD_FMDOpt --loss=CrossEntropyLoss --m=2 --episodes=100
python main.py --algo=SGD_FMDOpt --loss=CrossEntropyLoss --m=3 --episodes=100
python main.py --algo=SGD_FMDOpt --loss=CrossEntropyLoss --m=4 --episodes=100
python main.py --algo=SGD_FMDOpt --loss=CrossEntropyLoss --m=5 --episodes=100
# plot
# python plot.py --fig_name=loss-CrossEntropyLoss-iter --x=optim_steps --y=avg_loss \
#        --max_steps=100 --loss=CrossEntropyLoss --fig_name='CEL+loss+iter.png'
# python plot.py  --x=optim_steps --y=grad_norm \
#               --max_steps=100 --loss=CrossEntropyLoss --fig_name='CEL+norm+iter.png'
# python plot.py --fig_name=loss-CrossEntropyLoss-iter --x=function_evals --y=avg_loss \
#        --max_steps=100 --loss=CrossEntropyLoss --fig_name='CEL+loss+func.png'
# python plot.py  --x=function_evals --y=grad_norm \
#               --max_steps=100 --loss=CrossEntropyLoss --fig_name='CEL+norm+func.png'
# python plot.py --fig_name=loss-CrossEntropyLoss-iter --x=grad_evals --y=avg_loss \
#        --max_steps=100 --loss=CrossEntropyLoss --fig_name='CEL+loss+grad.png'
# python plot.py  --x=grad_evals --y=grad_norm \
#               --max_steps=100 --loss=CrossEntropyLoss --fig_name='CEL+norm+grad.png'
