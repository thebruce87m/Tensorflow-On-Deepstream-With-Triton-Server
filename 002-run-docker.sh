#!/bin/bash

# Run the docker:

docker run \
--gpus all \
-it \
--rm \
--net=host \
--privileged \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $(pwd):/code/ \
-e DISPLAY=$DISPLAY \
-e CUDA_VER=11.6 \
-w /code/ \
nvcr.io/nvidia/deepstream:6.1-devel