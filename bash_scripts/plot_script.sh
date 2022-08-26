# plotting code
python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=grad_evals \
--batch_size=100 --y=avg_loss --dataset_name=mushrooms --func_only=0 --fig_name='mushrooms+BCE+100' \
--max_steps=100000 --func_only=1
python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=grad_evals \
--batch_size=100 --y=avg_loss --dataset_name=ijcnn --func_only=0 --fig_name='ijcnn+BCE+100' \
--max_steps=100000 --func_only=0
python plotting.py --download_data=0 --loss=MSELoss --x=grad_evals \
--batch_size=100 --y=avg_loss --dataset_name=mushrooms --func_only=0 --fig_name='mushrooms+MSE+100' \
--max_steps=100000 --func_only=1
python plotting.py --download_data=0 --loss=MSELoss --x=grad_evals \
--batch_size=100 --y=avg_loss --dataset_name=ijcnn --func_only=0 --fig_name='ijcnn+MSE+100' \
--max_steps=100000 --func_only=1
python plotting.py --download_data=0 --loss=CrossEntropyLoss --x=grad_evals \
--batch_size=100 --y=avg_loss --dataset_name=mushrooms --func_only=0 --fig_name='mushrooms+CEL+100' \
--max_steps=100000 --func_only=1
python plotting.py --download_data=0 --loss=CrossEntropyLoss --x=grad_evals \
--batch_size=100 --y=avg_loss --dataset_name=ijcnn --func_only=0 --fig_name='ijcnn+CEL+100' \
--max_steps=100000 --func_only=1

# plotting code
python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=grad_evals \
--batch_size=500 --y=avg_loss --dataset_name=mushrooms --func_only=0 --fig_name='mushrooms+BCE+500' \
--max_steps=100000 --func_only=1
python plotting.py --download_data=0 --loss=BCEWithLogitsLoss --x=grad_evals \
--batch_size=500 --y=avg_loss --dataset_name=ijcnn --func_only=0 --fig_name='ijcnn+BCE+500' \
--max_steps=100000 --func_only=1
python plotting.py --download_data=0 --loss=MSELoss --x=grad_evals \
--batch_size=500 --y=avg_loss --dataset_name=mushrooms --func_only=0 --fig_name='mushrooms+MSE+500' \
--max_steps=100000 --func_only=1
python plotting.py --download_data=0 --loss=MSELoss --x=grad_evals \
--batch_size=500 --y=avg_loss --dataset_name=ijcnn --func_only=0 --fig_name='ijcnn+MSE+500' \
--max_steps=100000 --func_only=1
python plotting.py --download_data=0 --loss=CrossEntropyLoss --x=grad_evals \
--batch_size=500 --y=avg_loss --dataset_name=mushrooms --func_only=0 --fig_name='mushrooms+CEL+500' \
--max_steps=100000 --func_only=1
python plotting.py --download_data=0 --loss=CrossEntropyLoss --x=grad_evals \
--batch_size=500 --y=avg_loss --dataset_name=ijcnn --func_only=0 --fig_name='ijcnn+CEL+500' \
--max_steps=100000 --func_only=1
