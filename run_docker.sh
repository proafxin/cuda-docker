#!/usr/bin/bash
docker run -it --runtime=nvidia --dns 8.8.8.8 --gpus all cuda-image:latest /bin/bash