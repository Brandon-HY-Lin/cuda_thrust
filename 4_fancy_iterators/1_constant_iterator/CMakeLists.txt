# CMakeList.txt : CMake project for 1_constant_iterator, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

project ("1_constant_iterator")

find_package (CUDA REQUIRED)

# Add source to this project's executable.
CUDA_ADD_EXECUTABLE (1_constant_iterator "1_constant_iterator.cu")

# TODO: Add tests and install targets if needed.
