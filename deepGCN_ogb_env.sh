# conda create a new environment
conda create --name ogb_env python=3.7
# activate this enviroment
conda activate ogb_env
# install pytorch parameters explaination: -y (-yes:  Do not ask for confirmation.)
# '-c local': Channel Customization; Use locally built packages; Additional channel to search for packages
conda install -y pytorch=1.4.0 torchvision cudatoolkit=10.0 -c pytorch
# test if pytorch is installed successfully
python -c "import torch; print(torch.__version__)"
# <<< 1.4.0
# check if PyTorch and system CUDA versions match
nvcc --vesion # should be same with that of torch_version_cuda (they should be the same)
# <<< 10.0
python -c "import torch; print(torch.version.cuda)"
# <<< 10.0
# ${CUDA} replaced by either cpu, cu92, cu100 or cu101
# here the version of pytorch is 1.4.0, thus replace ${CUDA} with cu101
# pip install torch-scatter==latest+${CUDA} -f https://pytorch-geometric.com/whl/torch-1.4.0.html
# pip install torch-sparse==latest+${CUDA} -f https://pytorch-geometric.com/whl/torch-1.4.0.html
# pip install torch-cluster==latest+${CUDA} -f https://pytorch-geometric.com/whl/torch-1.4.0.html
# pip install torch-spline-conv==latest+${CUDA} -f https://pytorch-geometric.com/whl/torch-1.4.0.html
# python setup.py install or pip install torch-geometric
# cu100 means the version of cuda is 100
## install torch-scatter
pip install torch-scatter==latest+cu100 -f https://pytorch-geometric.com/whl/torch-1.4.0.html
## install torch-sparse
pip install torch-sparse==latest+cu100 -f https://pytorch-geometric.com/whl/torch-1.4.0.html
## install torch-cluster
pip install torch-cluster==latest+cu100 -f https://pytorch-geometric.com/whl/torch-1.4.0.html
## install torch-spline-conv
pip install torch-spline-conv==latest+cu100 -f https://pytorch-geometric.com/whl/torch-1.4.0.html
pip install torch-geometric
###
pip install tqdm
###
### start from torch 1.3.0, it doesn't support too old version of GPU however the code could be run on ibex cluster with v100 GPU architecture.
# https://heary.cn/posts/PyTorch%E6%8A%A5CUDA-error-no-kernel-image-is-available-for-execution-on-the-device%E9%97%AE%E9%A2%98%E8%A7%A3%E5%86%B3/
