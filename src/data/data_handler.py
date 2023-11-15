import numpy as np


def read_input(path, trim = False):
  if trim:
    return np.delete(np.genfromtxt(path, delimiter=',', skip_header=1, dtype=))

np.genfromtxt('../')