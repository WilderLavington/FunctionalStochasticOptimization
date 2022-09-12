
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
LIBSVM_URL = "https://www.csie.ntu.edu.tw/~cjlin/libsvmtools/datasets/binary/"
LIBSVM_DOWNLOAD_FN = {"rcv1"       : "rcv1_train.binary.bz2",
                      "mushrooms"  : "mushrooms",
                      "ijcnn"      : "ijcnn1.tr.bz2",
                      "w8a"        : "w8a"}

# ===========================================================
# simple baseline examples
def load_libsvm(name, data_dir='datasets/'):
    if not os.path.exists(data_dir):
        os.mkdir(data_dir)

    fn = LIBSVM_DOWNLOAD_FN[name]
    data_path = os.path.join(data_dir, fn)

    if not os.path.exists(data_path):
        url = urllib.parse.urljoin(LIBSVM_URL, fn)
        print("Downloading from %s" % url)
        urllib.request.urlretrieve(url, data_path)
        print("Download complete.")

    X, y = load_svmlight_file(data_path)
    X = csr_matrix(X).todense()
    labels = np.unique(y)
    y[y==labels[0]] = 0
    y[y==labels[1]] = 1
    return X, y

# ===========================================================
# matrix matrix_factorization
def generate_synthetic_mfac(xdim=6, ydim=10, nsamples=1000, A_condition_number=1e-10):
	"""
    Generate a synthetic matrix factorization dataset as suggested by Ben Recht.
		See: https://github.com/benjamin-recht/shallow-linear-net/blob/master/TwoLayerLinearNets.ipynb.
	"""
	Atrue = np.linspace(1, A_condition_number, ydim
					   ).reshape(-1, 1) * np.random.rand(ydim, xdim)
	# the inputs
	X = np.random.randn(xdim, nsamples)
	# the y's to fit
	Ytrue = Atrue.dot(X)
	data = (X.T, Ytrue.T)

	return data
