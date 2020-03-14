# CMakeList.txt : CMake project for sort_by_key, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

project ("sort_by_key")

find_package (CUDA REQUIRED)

# Add source to this project's executable.
CUDA_ADD_EXECUTABLE (sort_by_key "sort_by_key.cu")

# TODO: Add tests and install targets if needed.
