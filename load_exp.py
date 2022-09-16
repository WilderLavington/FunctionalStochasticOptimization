
import pandas as pd
import numpy as np
import os
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.preprocessing import LabelEncoder
import urllib
from sklearn.svm import SVC
from sklearn.datasets import load_svmlight_file
from scipy.sparse import csr_matrix
import torch

# local imports
from load_data import *
from models import *

# ======================
# if we need to download anything
LIBSVM_URL = "https://www.csie.ntu.edu.tw/~cjlin/libsvmtools/datasets/binary/"
LIBSVM_DOWNLOAD_FN = {"rcv1"       : "rcv1_train.binary.bz2",
                      "mushrooms"  : "mushrooms",
                      "ijcnn"      : "ijcnn1.tr.bz2",
                      "w8a"        : "w8a"}

# ======================
# set expensive to compute hyper-parameters
L_MAP = {'mushrooms': torch.tensor(21764.3105, device='cuda'),
         'ijcnn': torch.tensor(3476.3210, device='cuda'),
         'rcv1': torch.tensor(166.4695, device='cuda'),
         'mfac': torch.tensor(1000, device='cuda'),
         'mnist': torch.tensor(1000, device='cuda'),
         'cifar10': torch.tensor(1000, device='cuda'),
         'cifar100': torch.tensor(1000, device='cuda')}

# ======================
# general data-loader
def load_dataset(data_set_id, data_dir, loss):
    if data_set_id in LIBSVM_DOWNLOAD_FN.keys():
        return procces_data(*load_libsvm(data_set_id, data_dir=data_dir), loss)
    elif data_set_id == "cifar100":
        return procces_data(*load_cifar100(data_dir), loss)
    elif data_set_id == "cifar10":
        return procces_data(*load_cifar10(data_dir), loss)
    elif data_set_id == "mnist":
        return procces_data(*load_mnist(data_dir), loss)
    elif data_set_id == "mfac":
        assert loss == 'MSELoss'
        return procces_data(*generate_synthetic_mfac(), loss)
    else:
        raise Exception('provide correct dataset id')

# ======================
# format datasets
def procces_data(X, y, loss):
    if loss == 'CrossEntropyLoss':
        X, y = torch.tensor(X,device='cpu',dtype=torch.float), torch.tensor(y,device='cpu',dtype=torch.long)
    elif loss == 'BCEWithLogitsLoss':
        X, y = torch.tensor(X,device='cpu',dtype=torch.float), torch.tensor(y,device='cpu',dtype=torch.float)
    elif loss == 'MSELoss':
        X, y = torch.tensor(X,device='cpu',dtype=torch.float), torch.tensor(y,device='cpu',dtype=torch.float).unsqueeze(1)
    else:
        raise Exception('')
    return X, y

# ======================
# get models
def load_model(data_set_id, loss, X, y, use_dense=False):

    # general loss
    if loss == 'CrossEntropyLoss':
        loss_func = nn.CrossEntropyLoss()
        model = DiscreteLinearModel(X.shape[1], y.max()+1)
        model.to('cuda')
        L = L_MAP[data_set_id] * 4

    elif loss == 'BCEWithLogitsLoss':
        loss_func_ = nn.BCEWithLogitsLoss()
        loss_func = lambda t, y: loss_func_(t.reshape(-1), y.reshape(-1))
        model = DiscreteLinearModel(X.shape[1], 1)
        model.to('cuda')
        L = L_MAP[data_set_id] * 4

    elif loss == 'MSELoss':
        loss_func = nn.MSELoss()
        model = ContinuousLinearModel(X.shape[1], 1)
        model.to('cuda')
        L = L_MAP[data_set_id]

    # update model for stuff that needs it
    if data_set_id == 'mfac':
        model = LinearNueralNetworkModel(X.shape[1], [16], 10)
        model.to('cuda')
        L = L_MAP[data_set_id]
    elif data_set_id == 'mnist':
        model = Mlp(n_classes=10, dropout=False)
        model.to('cuda')
    elif data_set_id == 'cifar10':
        if use_dense:
            model = DenseNet121(num_classes=10)
        else:
            model = ResNet([3, 4, 6, 3], num_classes=10)
        model.to('cuda')
    elif data_set_id == 'cifar100':
        if use_dense:
            model = DenseNet121(num_classes=100)
        else:
            model = ResNet([3, 4, 6, 3], num_classes=100)
        model.to('cuda')

    return model, loss_func, L
