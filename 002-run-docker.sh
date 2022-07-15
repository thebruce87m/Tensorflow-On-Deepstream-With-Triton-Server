#!/bin/bash
#!/bin/bash

# Run the docker:

docker run \
--gpus all \
-it \
--rm \
--shm-size=1g \
--ulimit memlock=-1 \
--ulimit stack=67108864 \
--net=host \
--privileged \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $(pwd):/code/ \
-e DISPLAY=$DISPLAY \
-e CUDA_VER=11.6 \
-w /code/ \
nvcr.io/nvidia/deepstream:5.0-20.07-triton