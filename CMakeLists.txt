cmake_minimum_required(VERSION 3.1)
project(c_cpp CXX C)

set(CMAKE_C_STANDARD 11)

set(SOURCE_FILES src/main.c
        )

add_executable(c_cpp src/main.c)

#####################  static lib #####################


add_library(myStaticLib STATIC lib/myStaticLib.c lib/myStaticLib.h)
target_include_directories(myStaticLib PUBLIC ${PROJECT_SOURCE_DIR}/lib)

target_link_libraries(${PROJECT_NAME} PRIVATE myStaticLib)

#####################  dynamic lib #####################


add_library(myDynamicLib SHARED lib/myDynamicLib.c lib/myDynamicLib.h)
target_include_directories(myDynamicLib PUBLIC ${PROJECT_SOURCE_DIR}/lib)

target_link_libraries(${PROJECT_NAME} PRIVATE myDynamicLib -ldl)

##################################################################


##################### google test #####################

#------------tests def------------#


configure_file(CMakeLists.txt.in
        googletest-download/CMakeLists.txt)
execute_process(COMMAND ${CMAKE_COMMAND} -G "${CMAKE_GENERATOR}" .
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/googletest-download )
execute_process(COMMAND ${CMAKE_COMMAND} --build .
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/googletest-download )

add_subdirectory(${CMAKE_BINARY_DIR}/googletest-src
        ${CMAKE_BINARY_DIR}/googletest-build)

enable_testing()
add_subdirectory(test)

#------------source def------------#

include_directories("${PROJECT_SOURCE_DIR}/include")

file(GLOB sources
        "${PROJECT_SOURCE_DIR}/lib/*.c"
        "${PROJECT_SOURCE_DIR}/lib/*.h"
        "${PROJECT_SOURCE_DIR}/src/*.c")


SET_TARGET_PROPERTIES(c_cpp PROPERTIES LINKER_LANGUAGE C)


SET(CMAKE_C_FLAGS "-Wall -Werror -Wpedantic -fPIC")


