# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/moroz/Desktop/c_cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/moroz/Desktop/c_cpp

# Include any dependencies generated for this target.
include CMakeFiles/myDynamicLib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/myDynamicLib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/myDynamicLib.dir/flags.make

CMakeFiles/myDynamicLib.dir/lib/myDynamicLib.c.o: CMakeFiles/myDynamicLib.dir/flags.make
CMakeFiles/myDynamicLib.dir/lib/myDynamicLib.c.o: lib/myDynamicLib.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moroz/Desktop/c_cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/myDynamicLib.dir/lib/myDynamicLib.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/myDynamicLib.dir/lib/myDynamicLib.c.o   -c /home/moroz/Desktop/c_cpp/lib/myDynamicLib.c

CMakeFiles/myDynamicLib.dir/lib/myDynamicLib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/myDynamicLib.dir/lib/myDynamicLib.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/moroz/Desktop/c_cpp/lib/myDynamicLib.c > CMakeFiles/myDynamicLib.dir/lib/myDynamicLib.c.i

CMakeFiles/myDynamicLib.dir/lib/myDynamicLib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/myDynamicLib.dir/lib/myDynamicLib.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/moroz/Desktop/c_cpp/lib/myDynamicLib.c -o CMakeFiles/myDynamicLib.dir/lib/myDynamicLib.c.s

# Object files for target myDynamicLib
myDynamicLib_OBJECTS = \
"CMakeFiles/myDynamicLib.dir/lib/myDynamicLib.c.o"

# External object files for target myDynamicLib
myDynamicLib_EXTERNAL_OBJECTS =

libmyDynamicLib.so: CMakeFiles/myDynamicLib.dir/lib/myDynamicLib.c.o
libmyDynamicLib.so: CMakeFiles/myDynamicLib.dir/build.make
libmyDynamicLib.so: CMakeFiles/myDynamicLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/moroz/Desktop/c_cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libmyDynamicLib.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/myDynamicLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/myDynamicLib.dir/build: libmyDynamicLib.so

.PHONY : CMakeFiles/myDynamicLib.dir/build

CMakeFiles/myDynamicLib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/myDynamicLib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/myDynamicLib.dir/clean

CMakeFiles/myDynamicLib.dir/depend:
	cd /home/moroz/Desktop/c_cpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/moroz/Desktop/c_cpp /home/moroz/Desktop/c_cpp /home/moroz/Desktop/c_cpp /home/moroz/Desktop/c_cpp /home/moroz/Desktop/c_cpp/CMakeFiles/myDynamicLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/myDynamicLib.dir/depend

