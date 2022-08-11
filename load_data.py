
import pandas as pd
import numpy as np
import os
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.preprocessing import LabelEncoder

def create_mushroom_data():
    df = pd.read_csv('datasets/mushrooms.csv')
    df = df.drop(["veil-type"],axis=1)
    target = df["class"]
    df = df.drop(["class"], axis=1)
    labelencoder=LabelEncoder()
    target = labelencoder.fit_transform(target)
    # converting to binary data
    for col in df.columns:
        # get binary columns
        df_bin = pd.get_dummies(df[col])
        # make the names unique
        for c in df_bin.columns:
            df_bin[col+'-'+c] = df_bin[c]
            df_bin = df_bin.drop([c], axis=1)
        # display result
        df = pd.concat((df_bin, df), axis=1)
        df = df.drop([col], axis=1)
    df['class'] = target
    y = df["class"].values
    X = df.drop(["class"], axis=1).values
    return X,y
