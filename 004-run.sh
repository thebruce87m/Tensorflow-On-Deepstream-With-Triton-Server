#!/bin/bash

# Run the demo

export DEEPSTREAM_DIR=/opt/nvidia/deepstream/deepstream-5.0/

cd $DEEPSTREAM_DIR/samples/configs/deepstream-app-trtis
deepstream-app --gst-debug=3 -c source1_primary_faster_rcnn_inception_v2.txt