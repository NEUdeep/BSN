mkdir  ~/.pip/
echo [global] > ~/.pip/pip.conf
echo index-url=https://mirrors.aliyun.com/pypi/simple/  >> ~/.pip/pip.conf
nvcc --version
which nvcc
ls /usr/local
ls /usr/local/cuda-11.0
cat /usr/local/cuda-11.0/version.txt
cat /usr/local/cuda/version.txt
nvidia-smi
# pip install torch==1.6.0+cu101 torchvision==0.7.0+cu101 -f https://download.pytorch.org/whl/torch_stable.html -i https://mirrors.aliyun.com/pypi/simple
pip install -r requirements.txt
nvidia-smi