#!/bin/bash

cd ./downloads/

# Download the model
wget http://download.tensorflow.org/models/object_detection/faster_rcnn_inception_v2_coco_2018_01_28.tar.gz

tar xvf faster_rcnn_inception_v2_coco_2018_01_28.tar.gz

# Download the labels

wget https://raw.githubusercontent.com/NVIDIA-AI-IOT/deepstream_triton_model_deploy/master/faster_rcnn_inception_v2/config/labels.txt
