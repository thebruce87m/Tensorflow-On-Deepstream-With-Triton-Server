#!/bin/bash

export DEEPSTREAM_DIR=/opt/nvidia/deepstream/deepstream-5.0/

# Copy the model

cd ${DEEPSTREAM_DIR}samples/trtis_model_repo

mkdir -p faster_rcnn_inception_v2 && cd faster_rcnn_inception_v2 && mkdir -p 1

cp /code/downloads/faster_rcnn_inception_v2_coco_2018_01_28/frozen_inference_graph.pb 1/model.graphdef


# Copy the config file

cp /code/files/config.pbtxt .

# Copy the labels

cp /code/downloads/labels.txt .


# Copy the deepstream configs

mkdir -p ${DEEPSTREAM_DIR}samples/configs/deepstream-app-trtis/

cp /code/files/config_infer_primary_faster_rcnn_inception_v2.txt ${DEEPSTREAM_DIR}samples/configs/deepstream-app-trtis/

cp /code/files/source1_primary_faster_rcnn_inception_v2.txt ${DEEPSTREAM_DIR}samples/configs/deepstream-app-trtis/


# Build the plugin

cd ${DEEPSTREAM_DIR}sources/libs/nvdsinfer_customparser
make all
cp ${DEEPSTREAM_DIR}sources/libs/nvdsinfer_customparser/libnvds_infercustomparser.so ${DEEPSTREAM_DIR}lib/