# CMakeList.txt : CMake project for prefix_sums, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

project ("prefix_sums")

find_package (CUDA REQUIRED)
# Add source to this project's executable.
CUDA_ADD_EXECUTABLE (prefix_sums "prefix_sums.cu")

# TODO: Add tests and install targets if needed.
