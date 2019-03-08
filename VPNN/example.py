import torch


def construction(t_tensor, W_tensor:list):
    W_tensor[0] = torch.sin(2 * t_tensor[0, 0]) + 2
    W_tensor[1] = torch.cos(2 * t_tensor[0, 1])
    W_tensor[2] = torch.sin(4 * t_tensor[0, 2])
    W_tensor[3] = torch.cos(2 * t_tensor[1, 0])
    W_tensor[4] = torch.sin(2 * t_tensor[1, 1]) + 2
    W_tensor[5] = torch.cos(4 * t_tensor[1, 2])
    W_tensor[6] = torch.sin(4 * t_tensor[2, 0])
    W_tensor[7] = torch.cos(4 * t_tensor[2, 1])
    W_tensor[8] = torch.zeros(1) * t_tensor[2, 2]
    return W_tensor
