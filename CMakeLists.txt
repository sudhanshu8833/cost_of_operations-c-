cmake_minimum_required(VERSION 3.14)
project(cost_of_operations)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_BUILD_TYPE Release)

find_package(benchmark REQUIRED)

add_executable(bench_memory 
            bench_memory.cpp
            core_pinning.cpp)

target_link_libraries(bench_memory benchmark::benchmark)

