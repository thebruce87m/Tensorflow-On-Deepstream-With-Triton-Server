https://developer.nvidia.com/blog/deploying-models-from-tensorflow-model-zoo-using-deepstream-and-triton-inference-server/


# Download the files
./001-download.sh

# Run the docker:
./002-run-docker.sh

# Prepare things inside the docker, copy files etc
# Note - run in docker
./003-prepare.sh


# Run the example
# Note - run in docker
./004-run.sh

# Exit the docker
exit