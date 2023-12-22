FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install python3 -y
RUN apt-get install python3-dev python3-setuptools python3-distutils build-essential  -y
RUN apt-get install python3-pip -y
RUN python3 -m pip install -U pip setuptools


RUN echo "export PATH=/usr/local/cuda/bin:$PATH" > ~/.bashrc
RUN echo "export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH" > ~/.bashrc

RUN python3 -m pip install -U pycuda

RUN python3 -m pip install nvidia-tensorrt --extra-index-url https://pypi.nvidia.com

CMD [ "/bin/bash" ]
