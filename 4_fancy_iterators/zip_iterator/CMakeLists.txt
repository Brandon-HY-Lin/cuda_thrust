# CMakeList.txt : CMake project for zip_iterator, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

project ("zip_iterator")

find_package (CUDA REQUIRED)

# Add source to this project's executable.
CUDA_ADD_EXECUTABLE (zip_iterator "zip_iterator.cu")

# TODO: Add tests and install targets if needed.
