# CMakeList.txt : CMake project for 1_resize, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

project ("1_resize")

find_package (CUDA REQUIRED)

file (GLOB src *.cu *.cpp)

# Add source to this project's executable.
CUDA_ADD_EXECUTABLE (1_resize ${src})

# TODO: Add tests and install targets if needed.
