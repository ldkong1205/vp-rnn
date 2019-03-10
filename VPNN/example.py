import torch


def construction_matrix(t_tensor, W_tensor:list):
    W_tensor[0, 0] = torch.sin(2 * t_tensor[0, 0]) + 2
    W_tensor[0, 1] = torch.cos(2 * t_tensor[0, 1])
    W_tensor[0, 2] = torch.sin(4 * t_tensor[0, 2])
    W_tensor[1, 0] = torch.cos(2 * t_tensor[1, 0])
    W_tensor[1, 1] = torch.sin(2 * t_tensor[1, 1]) + 2
    W_tensor[1, 2] = torch.cos(4 * t_tensor[1, 2])
    W_tensor[2, 0] = torch.sin(4 * t_tensor[2, 0])
    W_tensor[2, 1] = torch.cos(4 * t_tensor[2, 1])
    W_tensor[2, 2] = torch.zeros(1) * t_tensor[2, 2]
    return W_tensor


def construction_vector(t_tensor, W_tensor:list):
    W_tensor[0, 0] = torch.sigmoid(2 * t_tensor[0, 0]) + 2
    W_tensor[1, 0] = torch.cos(2 * t_tensor[1, 0])
    W_tensor[2, 0] = torch.sin(4 * t_tensor[2, 0])
    return W_tensor