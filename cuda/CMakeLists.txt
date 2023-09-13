cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(custom_torch_extension)

find_package(Torch REQUIRED)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${TORCH_CXX_FLAGS}")

add_executable(custom_torch_extension ltm_cuda_kernel.cu)  # Replace main.cpp with your source files
target_link_libraries(custom_torch_extension "${TORCH_LIBRARIES}")
set_property(TARGET custom_torch_extension PROPERTY CXX_STANDARD 14)
