# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build"

# Include any dependencies generated for this target.
include test/CMakeFiles/test_cxx.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test_cxx.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test_cxx.dir/flags.make

test/CMakeFiles/test_cxx.dir/test_cxx.cpp.o: test/CMakeFiles/test_cxx.dir/flags.make
test/CMakeFiles/test_cxx.dir/test_cxx.cpp.o: ../test/test_cxx.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/test_cxx.dir/test_cxx.cpp.o"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/test" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_cxx.dir/test_cxx.cpp.o -c "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/test/test_cxx.cpp"

test/CMakeFiles/test_cxx.dir/test_cxx.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_cxx.dir/test_cxx.cpp.i"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/test" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/test/test_cxx.cpp" > CMakeFiles/test_cxx.dir/test_cxx.cpp.i

test/CMakeFiles/test_cxx.dir/test_cxx.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_cxx.dir/test_cxx.cpp.s"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/test" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/test/test_cxx.cpp" -o CMakeFiles/test_cxx.dir/test_cxx.cpp.s

test/CMakeFiles/test_cxx.dir/test_cxx.cpp.o.requires:

.PHONY : test/CMakeFiles/test_cxx.dir/test_cxx.cpp.o.requires

test/CMakeFiles/test_cxx.dir/test_cxx.cpp.o.provides: test/CMakeFiles/test_cxx.dir/test_cxx.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/test_cxx.dir/build.make test/CMakeFiles/test_cxx.dir/test_cxx.cpp.o.provides.build
.PHONY : test/CMakeFiles/test_cxx.dir/test_cxx.cpp.o.provides

test/CMakeFiles/test_cxx.dir/test_cxx.cpp.o.provides.build: test/CMakeFiles/test_cxx.dir/test_cxx.cpp.o


# Object files for target test_cxx
test_cxx_OBJECTS = \
"CMakeFiles/test_cxx.dir/test_cxx.cpp.o"

# External object files for target test_cxx
test_cxx_EXTERNAL_OBJECTS =

test/test_cxx: test/CMakeFiles/test_cxx.dir/test_cxx.cpp.o
test/test_cxx: test/CMakeFiles/test_cxx.dir/build.make
test/test_cxx: src/libsylvan.so
test/test_cxx: /usr/lib/x86_64-linux-gnu/libgmp.so
test/test_cxx: test/CMakeFiles/test_cxx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_cxx"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/test" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_cxx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test_cxx.dir/build: test/test_cxx

.PHONY : test/CMakeFiles/test_cxx.dir/build

test/CMakeFiles/test_cxx.dir/requires: test/CMakeFiles/test_cxx.dir/test_cxx.cpp.o.requires

.PHONY : test/CMakeFiles/test_cxx.dir/requires

test/CMakeFiles/test_cxx.dir/clean:
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/test" && $(CMAKE_COMMAND) -P CMakeFiles/test_cxx.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test_cxx.dir/clean

test/CMakeFiles/test_cxx.dir/depend:
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master" "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/test" "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build" "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/test" "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/test/CMakeFiles/test_cxx.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : test/CMakeFiles/test_cxx.dir/depend
