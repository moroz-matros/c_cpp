# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/129/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/129/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/moroz/Desktop/tp/c_cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/moroz/Desktop/tp/c_cpp/cmake-build-debug

# Include any dependencies generated for this target.
include test/CMakeFiles/driver_unittest_tests.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/driver_unittest_tests.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/driver_unittest_tests.dir/flags.make

test/CMakeFiles/driver_unittest_tests.dir/__/src/driver.c.o: test/CMakeFiles/driver_unittest_tests.dir/flags.make
test/CMakeFiles/driver_unittest_tests.dir/__/src/driver.c.o: ../src/driver.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moroz/Desktop/tp/c_cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/driver_unittest_tests.dir/__/src/driver.c.o"
	cd /home/moroz/Desktop/tp/c_cpp/cmake-build-debug/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/driver_unittest_tests.dir/__/src/driver.c.o   -c /home/moroz/Desktop/tp/c_cpp/src/driver.c

test/CMakeFiles/driver_unittest_tests.dir/__/src/driver.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/driver_unittest_tests.dir/__/src/driver.c.i"
	cd /home/moroz/Desktop/tp/c_cpp/cmake-build-debug/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/moroz/Desktop/tp/c_cpp/src/driver.c > CMakeFiles/driver_unittest_tests.dir/__/src/driver.c.i

test/CMakeFiles/driver_unittest_tests.dir/__/src/driver.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/driver_unittest_tests.dir/__/src/driver.c.s"
	cd /home/moroz/Desktop/tp/c_cpp/cmake-build-debug/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/moroz/Desktop/tp/c_cpp/src/driver.c -o CMakeFiles/driver_unittest_tests.dir/__/src/driver.c.s

test/CMakeFiles/driver_unittest_tests.dir/driver_unittest.cpp.o: test/CMakeFiles/driver_unittest_tests.dir/flags.make
test/CMakeFiles/driver_unittest_tests.dir/driver_unittest.cpp.o: ../test/driver_unittest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moroz/Desktop/tp/c_cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/driver_unittest_tests.dir/driver_unittest.cpp.o"
	cd /home/moroz/Desktop/tp/c_cpp/cmake-build-debug/test && /bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/driver_unittest_tests.dir/driver_unittest.cpp.o -c /home/moroz/Desktop/tp/c_cpp/test/driver_unittest.cpp

test/CMakeFiles/driver_unittest_tests.dir/driver_unittest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/driver_unittest_tests.dir/driver_unittest.cpp.i"
	cd /home/moroz/Desktop/tp/c_cpp/cmake-build-debug/test && /bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moroz/Desktop/tp/c_cpp/test/driver_unittest.cpp > CMakeFiles/driver_unittest_tests.dir/driver_unittest.cpp.i

test/CMakeFiles/driver_unittest_tests.dir/driver_unittest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/driver_unittest_tests.dir/driver_unittest.cpp.s"
	cd /home/moroz/Desktop/tp/c_cpp/cmake-build-debug/test && /bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moroz/Desktop/tp/c_cpp/test/driver_unittest.cpp -o CMakeFiles/driver_unittest_tests.dir/driver_unittest.cpp.s

test/CMakeFiles/driver_unittest_tests.dir/main.cpp.o: test/CMakeFiles/driver_unittest_tests.dir/flags.make
test/CMakeFiles/driver_unittest_tests.dir/main.cpp.o: ../test/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moroz/Desktop/tp/c_cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/CMakeFiles/driver_unittest_tests.dir/main.cpp.o"
	cd /home/moroz/Desktop/tp/c_cpp/cmake-build-debug/test && /bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/driver_unittest_tests.dir/main.cpp.o -c /home/moroz/Desktop/tp/c_cpp/test/main.cpp

test/CMakeFiles/driver_unittest_tests.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/driver_unittest_tests.dir/main.cpp.i"
	cd /home/moroz/Desktop/tp/c_cpp/cmake-build-debug/test && /bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moroz/Desktop/tp/c_cpp/test/main.cpp > CMakeFiles/driver_unittest_tests.dir/main.cpp.i

test/CMakeFiles/driver_unittest_tests.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/driver_unittest_tests.dir/main.cpp.s"
	cd /home/moroz/Desktop/tp/c_cpp/cmake-build-debug/test && /bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moroz/Desktop/tp/c_cpp/test/main.cpp -o CMakeFiles/driver_unittest_tests.dir/main.cpp.s

# Object files for target driver_unittest_tests
driver_unittest_tests_OBJECTS = \
"CMakeFiles/driver_unittest_tests.dir/__/src/driver.c.o" \
"CMakeFiles/driver_unittest_tests.dir/driver_unittest.cpp.o" \
"CMakeFiles/driver_unittest_tests.dir/main.cpp.o"

# External object files for target driver_unittest_tests
driver_unittest_tests_EXTERNAL_OBJECTS =

test/driver_unittest_tests: test/CMakeFiles/driver_unittest_tests.dir/__/src/driver.c.o
test/driver_unittest_tests: test/CMakeFiles/driver_unittest_tests.dir/driver_unittest.cpp.o
test/driver_unittest_tests: test/CMakeFiles/driver_unittest_tests.dir/main.cpp.o
test/driver_unittest_tests: test/CMakeFiles/driver_unittest_tests.dir/build.make
test/driver_unittest_tests: googletest-build/googlemock/gtest/libgtest_maind.a
test/driver_unittest_tests: googletest-build/googlemock/gtest/libgtestd.a
test/driver_unittest_tests: test/CMakeFiles/driver_unittest_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/moroz/Desktop/tp/c_cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable driver_unittest_tests"
	cd /home/moroz/Desktop/tp/c_cpp/cmake-build-debug/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/driver_unittest_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/driver_unittest_tests.dir/build: test/driver_unittest_tests

.PHONY : test/CMakeFiles/driver_unittest_tests.dir/build

test/CMakeFiles/driver_unittest_tests.dir/clean:
	cd /home/moroz/Desktop/tp/c_cpp/cmake-build-debug/test && $(CMAKE_COMMAND) -P CMakeFiles/driver_unittest_tests.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/driver_unittest_tests.dir/clean

test/CMakeFiles/driver_unittest_tests.dir/depend:
	cd /home/moroz/Desktop/tp/c_cpp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/moroz/Desktop/tp/c_cpp /home/moroz/Desktop/tp/c_cpp/test /home/moroz/Desktop/tp/c_cpp/cmake-build-debug /home/moroz/Desktop/tp/c_cpp/cmake-build-debug/test /home/moroz/Desktop/tp/c_cpp/cmake-build-debug/test/CMakeFiles/driver_unittest_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/driver_unittest_tests.dir/depend

