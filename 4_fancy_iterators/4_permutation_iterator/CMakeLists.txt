# CMakeList.txt : CMake project for 4_permutation_iterator, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

project ("4_permutation_iterator")

find_package (CUDA REQUIRED)
# Add source to this project's executable.
CUDA_ADD_EXECUTABLE (4_permutation_iterator "4_permutation_iterator_gather.cu")

# TODO: Add tests and install targets if needed.
