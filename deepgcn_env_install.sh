# follow the instruction of Pyotrch Geometric: https://pytorch-geometric.readthedocs.io/en/latest/notes/installation.html
# 1.Make sure at least PyTorch 1.2.0 is installed
python -c "import torch; print(torch.__version__)"
# 2.Check if PyTorch is installed with CUDA support:
python -c "import torch; print(torch.cuda.is_available())"
# 3.Add CUDA's path, it's not the usual /usr/local/cuda/,so you need to check by doing the following several steps
# add the commands of loading modules in the ~/.bash_profile
module av cuda # check all the available cuda's version
module load cuda/version # version should be the same with "torch.version.cuda"
# if there is another version of cuda loaded already, you can use
module unload cuda # to unload it and then load particular version of cuda you need
which nvcc # obtain the path of nvcc, in my case, it's /sw/csgv/cuda/10.0.130/el7.6_binary/cuda-toolkit/bin/nvcc

export PATH=/sw/csgv/cuda/10.0.130/el7.6_binary/cuda-toolkit/bin:$PATH
export LD_LIBRARY_PATH=/sw/csgv/cuda/10.0.130/el7.6_binary/cuda-toolkit/lib64:$LD_LIBRARY_PATH

# 4.Check gcc's version is above 5 (it couldn't be 4.8)
gcc --version # if it's not, load one
module av gcc
module load gcc/version
# write the following command to ~/.bash_profile file for letting it be found by path
export CXX=/sw/csgv/modulefiles/compilers/gcc/6.4.0
# 5.Create and activate an environment
conda create -n deepgcn
conda activate deepgcn
conda install -y pytorch=1.2.0 torchvision cudatoolkit=10.0 tensorflow=1.14.0 python=3.7 -c pytorch
# 6.Make sure install all the needed packages
pip install --verbose --no-cache-dir torch-scatter
pip install --verbose --no-cache-dir torch-sparse
pip install --verbose --no-cache-dir torch-cluster
pip install --verbose --no-cache-dir torch-spline-conv (optional)
pip install torch-geometric

## good way to debug
gdb python
## under gdb mode
r main.py
## show stack trace
where
