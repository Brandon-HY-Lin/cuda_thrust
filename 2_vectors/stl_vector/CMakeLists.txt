# CMakeList.txt : CMake project for stl_vector, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

project ("stl_vector")

find_package (CUDA REQUIRED)

# Add source to this project's executable.
CUDA_ADD_EXECUTABLE (stl_vector "stl_vector.cu")

# TODO: Add tests and install targets if needed.
