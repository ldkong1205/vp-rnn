# Using PyTorch to automatically calculate gradient
import numpy as np 
import torch


def calculate_grad(W_tensor, t_tensor):
    row = len(W_tensor)
    col = len(W_tensor[row - 1])
    W_grad = np.zeros((row, col))

    for i in range(row):
        for j in range(col):
            if t_tensor.grad is not None:
                t_tensor.grad.data.zero_()
            if W_tensor[i][j].requires_grad:
                W_tensor[i][j].backward()
            gradient = t_tensor.grad.data.item()
            W_grad[i, j] = gradient
            
    
    return W_grad

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
    W_tensor = [[torch.sin(2*t_tensor) + 2, torch.cos(2*t_tensor), torch.sin(4*t_tensor)], 
        [torch.cos(2*t_tensor), torch.sin(2*t_tensor) + 2, torch.cos(4*t_tensor)], 
        [torch.sin(4*t_tensor), torch.cos(4*t_tensor), torch.zeros(1)]]
    W = torch.tensor(W_tensor).detach().numpy()
    return W, W_tensor, t_tensor


if __name__ == "__main__":
    def test():
        W, W_tensor, t_tensor = LiveMatrix(1)
        W_gradient = calculate_grad(W_tensor, t_tensor)

        print(W, W_gradient)
    
    test()
