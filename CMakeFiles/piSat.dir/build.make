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
CMAKE_SOURCE_DIR = /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat

# Include any dependencies generated for this target.
include CMakeFiles/piSat.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/piSat.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/piSat.dir/flags.make

CMakeFiles/piSat.dir/src/main.cpp.o: CMakeFiles/piSat.dir/flags.make
CMakeFiles/piSat.dir/src/main.cpp.o: src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/piSat.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/piSat.dir/src/main.cpp.o -c /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/main.cpp

CMakeFiles/piSat.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/piSat.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/main.cpp > CMakeFiles/piSat.dir/src/main.cpp.i

CMakeFiles/piSat.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/piSat.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/main.cpp -o CMakeFiles/piSat.dir/src/main.cpp.s

CMakeFiles/piSat.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/piSat.dir/src/main.cpp.o.requires

CMakeFiles/piSat.dir/src/main.cpp.o.provides: CMakeFiles/piSat.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/piSat.dir/build.make CMakeFiles/piSat.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/piSat.dir/src/main.cpp.o.provides

CMakeFiles/piSat.dir/src/main.cpp.o.provides.build: CMakeFiles/piSat.dir/src/main.cpp.o


CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.o: CMakeFiles/piSat.dir/flags.make
CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.o: src/DPLL/DPLL.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.o -c /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/DPLL/DPLL.cpp

CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/DPLL/DPLL.cpp > CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.i

CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/DPLL/DPLL.cpp -o CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.s

CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.o.requires:

.PHONY : CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.o.requires

CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.o.provides: CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.o.requires
	$(MAKE) -f CMakeFiles/piSat.dir/build.make CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.o.provides.build
.PHONY : CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.o.provides

CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.o.provides.build: CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.o


CMakeFiles/piSat.dir/src/DP/DP.cpp.o: CMakeFiles/piSat.dir/flags.make
CMakeFiles/piSat.dir/src/DP/DP.cpp.o: src/DP/DP.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/piSat.dir/src/DP/DP.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/piSat.dir/src/DP/DP.cpp.o -c /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/DP/DP.cpp

CMakeFiles/piSat.dir/src/DP/DP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/piSat.dir/src/DP/DP.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/DP/DP.cpp > CMakeFiles/piSat.dir/src/DP/DP.cpp.i

CMakeFiles/piSat.dir/src/DP/DP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/piSat.dir/src/DP/DP.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/DP/DP.cpp -o CMakeFiles/piSat.dir/src/DP/DP.cpp.s

CMakeFiles/piSat.dir/src/DP/DP.cpp.o.requires:

.PHONY : CMakeFiles/piSat.dir/src/DP/DP.cpp.o.requires

CMakeFiles/piSat.dir/src/DP/DP.cpp.o.provides: CMakeFiles/piSat.dir/src/DP/DP.cpp.o.requires
	$(MAKE) -f CMakeFiles/piSat.dir/build.make CMakeFiles/piSat.dir/src/DP/DP.cpp.o.provides.build
.PHONY : CMakeFiles/piSat.dir/src/DP/DP.cpp.o.provides

CMakeFiles/piSat.dir/src/DP/DP.cpp.o.provides.build: CMakeFiles/piSat.dir/src/DP/DP.cpp.o


CMakeFiles/piSat.dir/src/structures/CNF.cpp.o: CMakeFiles/piSat.dir/flags.make
CMakeFiles/piSat.dir/src/structures/CNF.cpp.o: src/structures/CNF.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/piSat.dir/src/structures/CNF.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/piSat.dir/src/structures/CNF.cpp.o -c /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/structures/CNF.cpp

CMakeFiles/piSat.dir/src/structures/CNF.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/piSat.dir/src/structures/CNF.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/structures/CNF.cpp > CMakeFiles/piSat.dir/src/structures/CNF.cpp.i

CMakeFiles/piSat.dir/src/structures/CNF.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/piSat.dir/src/structures/CNF.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/structures/CNF.cpp -o CMakeFiles/piSat.dir/src/structures/CNF.cpp.s

CMakeFiles/piSat.dir/src/structures/CNF.cpp.o.requires:

.PHONY : CMakeFiles/piSat.dir/src/structures/CNF.cpp.o.requires

CMakeFiles/piSat.dir/src/structures/CNF.cpp.o.provides: CMakeFiles/piSat.dir/src/structures/CNF.cpp.o.requires
	$(MAKE) -f CMakeFiles/piSat.dir/build.make CMakeFiles/piSat.dir/src/structures/CNF.cpp.o.provides.build
.PHONY : CMakeFiles/piSat.dir/src/structures/CNF.cpp.o.provides

CMakeFiles/piSat.dir/src/structures/CNF.cpp.o.provides.build: CMakeFiles/piSat.dir/src/structures/CNF.cpp.o


CMakeFiles/piSat.dir/src/structures/Clause.cpp.o: CMakeFiles/piSat.dir/flags.make
CMakeFiles/piSat.dir/src/structures/Clause.cpp.o: src/structures/Clause.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/piSat.dir/src/structures/Clause.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/piSat.dir/src/structures/Clause.cpp.o -c /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/structures/Clause.cpp

CMakeFiles/piSat.dir/src/structures/Clause.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/piSat.dir/src/structures/Clause.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/structures/Clause.cpp > CMakeFiles/piSat.dir/src/structures/Clause.cpp.i

CMakeFiles/piSat.dir/src/structures/Clause.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/piSat.dir/src/structures/Clause.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/structures/Clause.cpp -o CMakeFiles/piSat.dir/src/structures/Clause.cpp.s

CMakeFiles/piSat.dir/src/structures/Clause.cpp.o.requires:

.PHONY : CMakeFiles/piSat.dir/src/structures/Clause.cpp.o.requires

CMakeFiles/piSat.dir/src/structures/Clause.cpp.o.provides: CMakeFiles/piSat.dir/src/structures/Clause.cpp.o.requires
	$(MAKE) -f CMakeFiles/piSat.dir/build.make CMakeFiles/piSat.dir/src/structures/Clause.cpp.o.provides.build
.PHONY : CMakeFiles/piSat.dir/src/structures/Clause.cpp.o.provides

CMakeFiles/piSat.dir/src/structures/Clause.cpp.o.provides.build: CMakeFiles/piSat.dir/src/structures/Clause.cpp.o


CMakeFiles/piSat.dir/src/structures/Variable.cpp.o: CMakeFiles/piSat.dir/flags.make
CMakeFiles/piSat.dir/src/structures/Variable.cpp.o: src/structures/Variable.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/piSat.dir/src/structures/Variable.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/piSat.dir/src/structures/Variable.cpp.o -c /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/structures/Variable.cpp

CMakeFiles/piSat.dir/src/structures/Variable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/piSat.dir/src/structures/Variable.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/structures/Variable.cpp > CMakeFiles/piSat.dir/src/structures/Variable.cpp.i

CMakeFiles/piSat.dir/src/structures/Variable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/piSat.dir/src/structures/Variable.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/structures/Variable.cpp -o CMakeFiles/piSat.dir/src/structures/Variable.cpp.s

CMakeFiles/piSat.dir/src/structures/Variable.cpp.o.requires:

.PHONY : CMakeFiles/piSat.dir/src/structures/Variable.cpp.o.requires

CMakeFiles/piSat.dir/src/structures/Variable.cpp.o.provides: CMakeFiles/piSat.dir/src/structures/Variable.cpp.o.requires
	$(MAKE) -f CMakeFiles/piSat.dir/build.make CMakeFiles/piSat.dir/src/structures/Variable.cpp.o.provides.build
.PHONY : CMakeFiles/piSat.dir/src/structures/Variable.cpp.o.provides

CMakeFiles/piSat.dir/src/structures/Variable.cpp.o.provides.build: CMakeFiles/piSat.dir/src/structures/Variable.cpp.o


CMakeFiles/piSat.dir/src/util/parsefile.cpp.o: CMakeFiles/piSat.dir/flags.make
CMakeFiles/piSat.dir/src/util/parsefile.cpp.o: src/util/parsefile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/piSat.dir/src/util/parsefile.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/piSat.dir/src/util/parsefile.cpp.o -c /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/util/parsefile.cpp

CMakeFiles/piSat.dir/src/util/parsefile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/piSat.dir/src/util/parsefile.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/util/parsefile.cpp > CMakeFiles/piSat.dir/src/util/parsefile.cpp.i

CMakeFiles/piSat.dir/src/util/parsefile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/piSat.dir/src/util/parsefile.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/util/parsefile.cpp -o CMakeFiles/piSat.dir/src/util/parsefile.cpp.s

CMakeFiles/piSat.dir/src/util/parsefile.cpp.o.requires:

.PHONY : CMakeFiles/piSat.dir/src/util/parsefile.cpp.o.requires

CMakeFiles/piSat.dir/src/util/parsefile.cpp.o.provides: CMakeFiles/piSat.dir/src/util/parsefile.cpp.o.requires
	$(MAKE) -f CMakeFiles/piSat.dir/build.make CMakeFiles/piSat.dir/src/util/parsefile.cpp.o.provides.build
.PHONY : CMakeFiles/piSat.dir/src/util/parsefile.cpp.o.provides

CMakeFiles/piSat.dir/src/util/parsefile.cpp.o.provides.build: CMakeFiles/piSat.dir/src/util/parsefile.cpp.o


CMakeFiles/piSat.dir/src/util/util.cpp.o: CMakeFiles/piSat.dir/flags.make
CMakeFiles/piSat.dir/src/util/util.cpp.o: src/util/util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/piSat.dir/src/util/util.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/piSat.dir/src/util/util.cpp.o -c /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/util/util.cpp

CMakeFiles/piSat.dir/src/util/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/piSat.dir/src/util/util.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/util/util.cpp > CMakeFiles/piSat.dir/src/util/util.cpp.i

CMakeFiles/piSat.dir/src/util/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/piSat.dir/src/util/util.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/src/util/util.cpp -o CMakeFiles/piSat.dir/src/util/util.cpp.s

CMakeFiles/piSat.dir/src/util/util.cpp.o.requires:

.PHONY : CMakeFiles/piSat.dir/src/util/util.cpp.o.requires

CMakeFiles/piSat.dir/src/util/util.cpp.o.provides: CMakeFiles/piSat.dir/src/util/util.cpp.o.requires
	$(MAKE) -f CMakeFiles/piSat.dir/build.make CMakeFiles/piSat.dir/src/util/util.cpp.o.provides.build
.PHONY : CMakeFiles/piSat.dir/src/util/util.cpp.o.provides

CMakeFiles/piSat.dir/src/util/util.cpp.o.provides.build: CMakeFiles/piSat.dir/src/util/util.cpp.o


# Object files for target piSat
piSat_OBJECTS = \
"CMakeFiles/piSat.dir/src/main.cpp.o" \
"CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.o" \
"CMakeFiles/piSat.dir/src/DP/DP.cpp.o" \
"CMakeFiles/piSat.dir/src/structures/CNF.cpp.o" \
"CMakeFiles/piSat.dir/src/structures/Clause.cpp.o" \
"CMakeFiles/piSat.dir/src/structures/Variable.cpp.o" \
"CMakeFiles/piSat.dir/src/util/parsefile.cpp.o" \
"CMakeFiles/piSat.dir/src/util/util.cpp.o"

# External object files for target piSat
piSat_EXTERNAL_OBJECTS =

piSat: CMakeFiles/piSat.dir/src/main.cpp.o
piSat: CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.o
piSat: CMakeFiles/piSat.dir/src/DP/DP.cpp.o
piSat: CMakeFiles/piSat.dir/src/structures/CNF.cpp.o
piSat: CMakeFiles/piSat.dir/src/structures/Clause.cpp.o
piSat: CMakeFiles/piSat.dir/src/structures/Variable.cpp.o
piSat: CMakeFiles/piSat.dir/src/util/parsefile.cpp.o
piSat: CMakeFiles/piSat.dir/src/util/util.cpp.o
piSat: CMakeFiles/piSat.dir/build.make
piSat: sylvan/src/libsylvan.so
piSat: /usr/lib/x86_64-linux-gnu/libgmp.so
piSat: CMakeFiles/piSat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable piSat"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/piSat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/piSat.dir/build: piSat

.PHONY : CMakeFiles/piSat.dir/build

CMakeFiles/piSat.dir/requires: CMakeFiles/piSat.dir/src/main.cpp.o.requires
CMakeFiles/piSat.dir/requires: CMakeFiles/piSat.dir/src/DPLL/DPLL.cpp.o.requires
CMakeFiles/piSat.dir/requires: CMakeFiles/piSat.dir/src/DP/DP.cpp.o.requires
CMakeFiles/piSat.dir/requires: CMakeFiles/piSat.dir/src/structures/CNF.cpp.o.requires
CMakeFiles/piSat.dir/requires: CMakeFiles/piSat.dir/src/structures/Clause.cpp.o.requires
CMakeFiles/piSat.dir/requires: CMakeFiles/piSat.dir/src/structures/Variable.cpp.o.requires
CMakeFiles/piSat.dir/requires: CMakeFiles/piSat.dir/src/util/parsefile.cpp.o.requires
CMakeFiles/piSat.dir/requires: CMakeFiles/piSat.dir/src/util/util.cpp.o.requires

.PHONY : CMakeFiles/piSat.dir/requires

CMakeFiles/piSat.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/piSat.dir/cmake_clean.cmake
.PHONY : CMakeFiles/piSat.dir/clean

CMakeFiles/piSat.dir/depend:
	cd /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat /vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/CMakeFiles/piSat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/piSat.dir/depend

