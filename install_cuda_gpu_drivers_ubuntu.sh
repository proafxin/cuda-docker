apt install wget -y
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb
dpkg -i cuda-keyring_1.1-1_all.deb
apt update
apt list cuda -a
apt install cuda-11-8 -y
echo "export PATH=/usr/local/cuda-11.8/bin:$PATH" > ~/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/cuda-11.8/lib64:$LD_LIBRARY_PATH" > ~/.bashrc
export PATH=/usr/local/cuda-11.8/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-11.8/lib64:$LD_LIBRARY_PATH
git clone https://github.com/NVIDIA/cuda-samples.git
cd cuda-samples/Samples/1_Utilities/deviceQuery
make clean
make
make run
cd
apt list libcudnn8 -a
apt install libcudnn8=8.6.0.163-1+cuda11.8 -y
apt install libcudnn8-dev=8.6.0.163-1+cuda11.8 -y
apt install libcudnn8-samples -y
cp -r /usr/src/cudnn_samples_v8/ $HOME
apt install libfreeimage-dev libfreeimage3 -y
apt install freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev -y
cd cudnn_samples_v8/mnistCUDNN/
make clean && make
make run
cd

