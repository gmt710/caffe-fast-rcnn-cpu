#!/bin/bash

git clone -b faster-rcnn-upstream-33f2445 https://github.com/rbgirshick/caffe-fast-rcnn.git
git clone https://github.com/neuleaf/faster-rcnn-cpu.git
chmod a+w -R caffe-fast-rcnn/
chmod a+w -R faster-rcnn-cpu/

cp ./caffe/Makefile ./caffe-fast-rcnn/Makefile
cp ./caffe/Makefile.config ./caffe-fast-rcnn/Makefile.config

cd caffe-fast-rcnn/
cp ../caffe/include/caffe/util/cudnn.hpp ./include/caffe/util/cudnn.hpp

cp ../caffe/src/caffe/layers/cudnn_tanh_layer.cu ./src/caffe/layers/cudnn_tanh_layer.cu
cp ../caffe/src/caffe/layers/cudnn_tanh_layer.cpp ./src/caffe/layers/cudnn_tanh_layer.cpp
cp ../caffe/src/caffe/layers/cudnn_sigmoid_layer.cu ./src/caffe/layers/cudnn_sigmoid_layer.cu
cp ../caffe/src/caffe/layers/cudnn_sigmoid_layer.cpp ./src/caffe/layers/cudnn_sigmoid_layer.cpp
cp ../caffe/src/caffe/layers/cudnn_conv_layer.cu ./src/caffe/layers/cudnn_conv_layer.cu
cp ../caffe/src/caffe/layers/cudnn_conv_layer.cpp ./src/caffe/layers/cudnn_conv_layer.cpp
cp ../caffe/src/caffe/layers/cudnn_relu_layer.cu ./src/caffe/layers/cudnn_relu_layer.cu
cp ../caffe/src/caffe/layers/cudnn_relu_layer.cpp ./src/caffe/layers/cudnn_relu_layer.cpp

cp ../caffe/include/caffe/layers/cudnn_tanh_layer.hpp ./include/caffe/layers/cudnn_tanh_layer.hpp
cp ../caffe/include/caffe/layers/cudnn_sigmoid_layer.hpp ./include/caffe/layers/cudnn_sigmoid_layer.hpp
cp ../caffe/include/caffe/layers/cudnn_relu_layer.hpp ./include/caffe/layers/cudnn_relu_layer.hpp
cp ../caffe/include/caffe/layers/cudnn_relu_layer.hpp ./include/caffe/layers/cudnn_relu_layer.hpp

cp ../faster-rcnn-cpu/roi_pooling_layer.cpp ./src/caffe/layers/roi_pooling_layer.cpp 

# change CMakeLists.txt:
sed -i '29c caffe_option(CPU_ONLY  "Build Caffe without CUDA support" ON) # TODO: rename to USE_CUDA' ./CMakeLists.txt

# change test_smooth_L1_loss_layer.cpp:
sed -i '11c //#include "caffe/vision_layers.hpp"' ./src/caffe/test/test_smooth_L1_loss_layer.cpp 



sudo make all -j16
sudo make test -j16
sudo make pycaffe
sudo make matcaffe -j16
sudo make mattest -j16
