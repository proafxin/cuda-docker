#!/usr/bin/bash
docker run -it --runtime=nvidia --dns 8.8.8.8 --gpus all pycuda-tensorrt:python37 /bin/bash
