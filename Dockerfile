FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get update && apt install software-properties-common curl -y
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt install python3.9 -y
RUN apt install python3.9-dev build-essential -y
RUN apt install python3-setuptools python3.9-distutils python3-pip -y
RUN ln -sf /usr/bin/python3.9 /usr/bin/python3
RUN python3 -m pip install -U pip setuptools



RUN echo "export PATH=/usr/local/cuda/bin:$PATH" > ~/.bashrc
RUN echo "export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH" > ~/.bashrc

RUN python3 -m pip install -U pycuda

RUN python3 -m pip install nvidia-tensorrt --extra-index-url https://pypi.nvidia.com

CMD [ "/bin/bash" ]