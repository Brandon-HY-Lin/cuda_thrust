# CMakeList.txt : CMake project for 2_fill_copy_sequence, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

project ("2_fill_copy_sequence")

find_package (CUDA REQUIRED)

# Add source to this project's executable.
CUDA_ADD_EXECUTABLE (2_fill_copy_sequence "2_fill_copy_sequence.cu")

# TODO: Add tests and install targets if needed.
