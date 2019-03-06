import numpy as np 


def linear(input):
    '''
    Finish a linear activated function.

    Input
    input: the input array

    Return
    output: array as same as the input
    '''
    output = input
    return output

def power(input, p=3):
    '''
    Finish a power activated function.

    Input
    input: the input array
    p: 

    Return
    output: array after the power activate.
    '''
    output = np.power(input, p)
    return output

def sigmoid(input, zeta=2):
    output = (1 + np.exp(-zeta)) / (1 - np.exp(-zeta)) * (1 - np.exp(-zeta * input)) / (1+np.exp(-zeta * input))
    return output