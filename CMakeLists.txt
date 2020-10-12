cmake_minimum_required(VERSION 3.17)
project(c_cpp C)

set(CMAKE_C_STANDARD 11)

set(SOURCE_FILES main.c)

add_executable(c_cpp
        main.c)
target_link_libraries(c_cpp m)

