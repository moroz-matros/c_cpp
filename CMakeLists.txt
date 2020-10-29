cmake_minimum_required(VERSION 3.1)
project(c_cpp CXX C)

set(CMAKE_C_STANDARD 11)

set(SOURCE_FILES src/main.c
        )

add_executable(c_cpp src/main.c)

SET_TARGET_PROPERTIES(c_cpp PROPERTIES LINKER_LANGUAGE C)


#SET(CMAKE_C_FLAGS "-Wall -Werror -Wpedantic -fPIC")

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

################### cross compile #########################

if ("${TARGET_CPU}" STREQUAL "amd64")
    set (CMAKE_SIZEOF_VOID_P 8)

    set_property (GLOBAL PROPERTY FIND_LIBRARY_USE_LIB64_PATHS TRUE)
    set_property (GLOBAL PROPERTY FIND_LIBRARY_USE_LIB32_PATHS FALSE)
elseif ("${TARGET_CPU}" STREQUAL "x86")
    set (CMAKE_SIZEOF_VOID_P 4)

    set_property (GLOBAL PROPERTY FIND_LIBRARY_USE_LIB64_PATHS FALSE)
    set_property (GLOBAL PROPERTY FIND_LIBRARY_USE_LIB32_PATHS TRUE)

    if (GCC)
        set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m32")
        set (CMAKE_C_FLAGS   "${CMAKE_C_FLAGS} -m32")
    endif ()
else ()
    message ("Unsupported CPU")
endif ()




