import torch
import numpy as np

np_data = np.arange(8).reshape((2, 4))
torch_data = torch.from_numpy(np_data)

print(
    "test numpy data to torch data:\n",
    "np data\n", np_data,
    "\ntorch data", torch_data,
)
np_data0 = torch_data.numpy()
print(
    "test torch data to numpy data:\n",
    np_data0,
)