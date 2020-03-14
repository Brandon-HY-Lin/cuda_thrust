# CMakeList.txt : CMake project for sum_and_count, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

project ("sum_and_count")

find_package (CUDA REQUIRED)

# Add source to this project's executable.
CUDA_ADD_EXECUTABLE (sum_and_count "sum_and_count.cu")

# TODO: Add tests and install targets if needed.
