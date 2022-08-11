import torch
import numpy as np
import matplotlib.pyplot as plt
from copy import deepcopy
torch.manual_seed(1)
from tqdm import tqdm

def plot():

    # =================================================
    # batch_size=25, alpha=L, same number of samples different # of gradient evals
    fig, ax = plt.subplots()
    ogd = [np.array(train_policy(SGD_step,batch_size=25,m=1)[1]) for _ in range(10)]
    ogd_mean, ogd_max, ogd_min = np.mean(ogd, axis=0), np.quantile(ogd, 0.75, axis=0), np.quantile(ogd, 0.25, axis=0)
    ax.plot(ogd_mean, label='OGD')
    ax.fill_between(range(len(ogd_mean)), ogd_max, ogd_min, alpha = 0.5)
    # m = 1
    fogd = [np.array(train_policy(FSGD_step,batch_size=25,m=1)[1]) for _ in range(10)]
    fogd_mean, fogd_max, fogd_min = np.mean(fogd, axis=0), np.quantile(fogd, 0.75, axis=0), np.quantile(fogd, 0.25, axis=0)
    ax.plot(fogd_mean, label='FOGD-1')
    ax.fill_between(range(len(fogd_mean)), fogd_max, fogd_min, alpha = 0.5)
    # m = 10
    fogd = [np.array(train_policy(FSGD_step,batch_size=25,m=10)[1]) for _ in range(10)]
    fogd_mean, fogd_max, fogd_min = np.mean(fogd, axis=0), np.quantile(fogd, 0.75, axis=0), np.quantile(fogd, 0.25, axis=0)
    ax.plot(fogd_mean, label='FOGD-10')
    ax.fill_between(range(len(fogd_mean)), fogd_max, fogd_min, alpha = 0.5)
    # m = 100
    fogd = [np.array(train_policy(FSGD_step,batch_size=25,m=100)[1]) for _ in range(10)]
    fogd_mean, fogd_max, fogd_min = np.mean(fogd, axis=0), np.quantile(fogd, 0.75, axis=0), np.quantile(fogd, 0.25, axis=0)
    ax.plot(fogd_mean, label='FOGD-100')
    ax.fill_between(range(len(fogd_mean)), fogd_max, fogd_min, alpha = 0.5)
    # m = 1000
    fogd = [np.array(train_policy(FSGD_step,batch_size=25,m=1000)[1]) for _ in range(10)]
    fogd_mean, fogd_max, fogd_min = np.mean(fogd, axis=0), np.quantile(fogd, 0.75, axis=0), np.quantile(fogd, 0.25, axis=0)
    ax.plot(fogd_mean, label='FOGD-1000')
    ax.fill_between(range(len(fogd_mean)), fogd_max, fogd_min, alpha = 0.5)
    ax.grid()
    plt.legend()
    plt.rcParams['figure.dpi'] = 400
    plt.show()
    plt.savefig('batch_size=25,alpha=L.png')
