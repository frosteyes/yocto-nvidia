# Based on patch b5482ea6f97d812306bda7f8c28b4e35841f8de4
#
# to set OPENCV_CUDA_DETECTION_NVCC_FLAGS, which tells
# the OpenCV CUDA module which host compiler to use without
# generating a warning during the configure step.

EXTRA_OECMAKE_append_cuda = ' -DOPENCV_CUDA_DETECTION_NVCC_FLAGS="-ccbin ${CUDAHOSTCXX}"'

