This repository contains some docker containers of Ubuntu 22.04 version with cuda 11.8, libcudnn8, pycuda and nvidia-tensorrt preinstalled. The images are extended from official nvidia cuda containers. pycuda is notoriously difficult to install even in the latest python versions. Also nvidia-tensorrt can be a bit tricky to install. These containers aim to solve this issue for the most popular python versions including an old version 3.7 since many applications still run on 3.7.

#How to run

Simply execute `./run_docker.sh` If it is not recognized as an executable: `sudo chmod +x run_docker.sh`

Note: initially, numpy was also part of the container. However, usually applications have numpy installed already which may conflict with existing versions. So numpy was removed. This may be important when you try to use something like import pycuda.driver as cuda which will result in the error that numpy is not installed. If that is the case, simply add numpy to your project: `python3 -m pip install -U numpy`
