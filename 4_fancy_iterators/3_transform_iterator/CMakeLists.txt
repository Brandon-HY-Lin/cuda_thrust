# CMakeList.txt : CMake project for 3_transform_iterator, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

project ("3_transform_iterator")

find_package (CUDA REQUIRED)
# Add source to this project's executable.
CUDA_ADD_EXECUTABLE (3_transform_iterator "3_transform_iterator.cu")

# TODO: Add tests and install targets if needed.
