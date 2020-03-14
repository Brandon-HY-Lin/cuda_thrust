# CMakeList.txt : CMake project for 2_saxpy_functor, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

project ("2_saxpy_functor")

find_package (CUDA REQUIRED)

# Add source to this project's executable.
CUDA_ADD_EXECUTABLE (2_saxpy_functor "2_saxpy_functor.cu")

# TODO: Add tests and install targets if needed.
