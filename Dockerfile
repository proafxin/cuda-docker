FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04




RUN apt-get update && apt-get install python3 -y
RUN apt-get install python3-dev build-essential  -y
RUN apt-get install python3-pip -y
RUN python3 -m pip install -U pip setuptools

COPY . /app
WORKDIR ./app/
# RUN echo "nameserver 8.8.8.8" > /etc/resolv.conf

# RUN ./install_cuda_gpu_drivers_ubuntu.sh

RUN echo "export PATH=/usr/local/cuda/bin:$PATH" > ~/.bashrc
RUN echo "export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH" > ~/.bashrc

RUN python3 -m pip install -U pycuda

RUN python3 -m pip install nvidia-tensorrt --extra-index-url https://pypi.nvidia.com
RUN python3 -m pip install -U numpy

CMD [ "/bin/bash" ]