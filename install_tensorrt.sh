cd tensorrt-dependencies-ubuntu/

wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/libnvinfer8_8.6.0.12-1+cuda11.8_amd64.deb
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/libnvinfer-dev_8.6.0.12-1+cuda11.8_amd64.deb
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/libnvinfer-samples_8.6.0.12-1+cuda11.8_all.deb

sudo dpkg -i libnvinfer8_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvparsers8_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvonnxparsers8_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvinfer-headers-dev_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvinfer-lean8_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvinfer-dispatch8_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvinfer-plugin8_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvinfer-vc-plugin8_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvinfer-dev_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvinfer-dispatch-dev_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvinfer-headers-plugin-dev_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvinfer-lean-dev_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvinfer-plugin-dev_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvinfer-vc-plugin-dev_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvparsers-dev_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvonnxparsers-dev_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvinfer-bin_8.6.0.12-1+cuda11.8_amd64.deb
sudo dpkg -i libnvinfer-samples_8.6.0.12-1+cuda11.8_all.deb
sudo apt list python3-libnvinfer -a
sudo apt install python3-libnvinfer=8.6.0.12-1+cuda11.8
cd
sudo apt list tensorrt -a
sudo apt install tensorrt=8.6.0.12-1+cuda11.8
