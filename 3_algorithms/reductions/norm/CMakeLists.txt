# CMakeList.txt : CMake project for norm, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

project ("norm")

find_package (CUDA REQUIRED)

# Add source to this project's executable.
CUDA_ADD_EXECUTABLE (norm "norm.cu")

# TODO: Add tests and install targets if needed.
