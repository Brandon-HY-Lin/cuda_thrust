# CMakeList.txt : CMake project for 1_built_in_functors, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

project ("1_built_in_functors")

find_package (CUDA REQUIRED)

# Add source to this project's executable.
CUDA_ADD_EXECUTABLE (1_built_in_functors "1_built_in_functors.cu")

# TODO: Add tests and install targets if needed.
