https://developer.nvidia.com/blog/deploying-models-from-tensorflow-model-zoo-using-deepstream-and-triton-inference-server/

https://forums.developer.nvidia.com/t/deploying-models-from-tensorflow-model-zoo-using-nvidia-deepstream-and-nvidia-triton-inference-server/155682

# Download the files
./001-download.sh

# Run the docker:
./002-run-docker.sh

# Prepare things inside the docker, copy files etc
Note - run in docker
./003-prepare.sh

# Run the example
Note - run in docker
./004-run.sh

# Exit the docker
exit