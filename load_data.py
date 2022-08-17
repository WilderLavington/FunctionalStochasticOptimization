
import pandas as pd
import numpy as np
import os
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.preprocessing import LabelEncoder
import urllib
from sklearn.svm import SVC
from sklearn.datasets import load_svmlight_file

LIBSVM_URL = "https://www.csie.ntu.edu.tw/~cjlin/libsvmtools/datasets/binary/"
LIBSVM_DOWNLOAD_FN = {"rcv1"       : "rcv1_train.binary.bz2",
                      "mushrooms"  : "mushrooms",
                      "ijcnn"      : "ijcnn1.tr.bz2",
                      "w8a"        : "w8a"}

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
    return X, y

# def create_mushroom_data():
#     df = pd.read_csv('datasets/mushrooms.csv')
#     df = df.drop(["veil-type"],axis=1)
#     target = df["class"]
#     df = df.drop(["class"], axis=1)
#     labelencoder=LabelEncoder()
#     target = labelencoder.fit_transform(target)
#     # converting to binary data
#     for col in df.columns:
#         # get binary columns
#         df_bin = pd.get_dummies(df[col])
#         # make the names unique
#         for c in df_bin.columns:
#             df_bin[col+'-'+c] = df_bin[c]
#             df_bin = df_bin.drop([c], axis=1)
#         # display result
#         df = pd.concat((df_bin, df), axis=1)
#         df = df.drop([col], axis=1)
#     df['class'] = target
#     y = df["class"].values
#     X = df.drop(["class"], axis=1).values
#     return X,y
