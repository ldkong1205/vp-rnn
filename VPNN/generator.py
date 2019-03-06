# Using PyTorch to automatically calculate gradient
import numpy as np 
import torch


def calculate_grad(W_tensor, t_tensor):
    row = len(W_tensor)
    col = len(W_tensor[row - 1])
    W_grad = [[None]] * row

    for i in range(row):
        for j in range(col):
            t_tensor.grad.zero_()
            W_tensor[i][j].backward()
            gradient = t_tensor.grad.data.item()
            W_grad[i].append(gradient)
    
    gradient_matrix = np.array(W_grad)
    return gradient_matrix

def LiveMatrix(t, x=None):
    '''
    Generate a time varianted matrix W with specific defination. This version use pytorch to define a time-varianted matrix
    which can automatically calculate his gradient with time.  

    Input
    t: time step
    x: ???

    Return
    output: Tensor
    '''
    t_tensor = torch.tensor(t, dtype=torch.float, requires_grad=True)
    W_tensor = [[torch.sin(2*t) + 2, torch.cos(2*t), torch.sin(4*t)], 
        [torch.cos(2*t), torch.sin(2*t) + 2, torch.cos(4*t)], 
        [torch.sin(4*t), torch.cos(4*t), torch.zeros(1)]]
    W = torch.tensor(W_tensor).detach().numpy()
    return W, W_tensor, t_tensor


