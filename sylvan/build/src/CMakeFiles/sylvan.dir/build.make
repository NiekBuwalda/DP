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
include src/CMakeFiles/sylvan.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/sylvan.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/sylvan.dir/flags.make

src/CMakeFiles/sylvan.dir/lace.c.o: src/CMakeFiles/sylvan.dir/flags.make
src/CMakeFiles/sylvan.dir/lace.c.o: ../src/lace.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/sylvan.dir/lace.c.o"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sylvan.dir/lace.c.o   -c "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/lace.c"

src/CMakeFiles/sylvan.dir/lace.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sylvan.dir/lace.c.i"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/lace.c" > CMakeFiles/sylvan.dir/lace.c.i

src/CMakeFiles/sylvan.dir/lace.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sylvan.dir/lace.c.s"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/lace.c" -o CMakeFiles/sylvan.dir/lace.c.s

src/CMakeFiles/sylvan.dir/lace.c.o.requires:

.PHONY : src/CMakeFiles/sylvan.dir/lace.c.o.requires

src/CMakeFiles/sylvan.dir/lace.c.o.provides: src/CMakeFiles/sylvan.dir/lace.c.o.requires
	$(MAKE) -f src/CMakeFiles/sylvan.dir/build.make src/CMakeFiles/sylvan.dir/lace.c.o.provides.build
.PHONY : src/CMakeFiles/sylvan.dir/lace.c.o.provides

src/CMakeFiles/sylvan.dir/lace.c.o.provides.build: src/CMakeFiles/sylvan.dir/lace.c.o


src/CMakeFiles/sylvan.dir/sha2.c.o: src/CMakeFiles/sylvan.dir/flags.make
src/CMakeFiles/sylvan.dir/sha2.c.o: ../src/sha2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/sylvan.dir/sha2.c.o"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sylvan.dir/sha2.c.o   -c "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sha2.c"

src/CMakeFiles/sylvan.dir/sha2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sylvan.dir/sha2.c.i"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sha2.c" > CMakeFiles/sylvan.dir/sha2.c.i

src/CMakeFiles/sylvan.dir/sha2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sylvan.dir/sha2.c.s"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sha2.c" -o CMakeFiles/sylvan.dir/sha2.c.s

src/CMakeFiles/sylvan.dir/sha2.c.o.requires:

.PHONY : src/CMakeFiles/sylvan.dir/sha2.c.o.requires

src/CMakeFiles/sylvan.dir/sha2.c.o.provides: src/CMakeFiles/sylvan.dir/sha2.c.o.requires
	$(MAKE) -f src/CMakeFiles/sylvan.dir/build.make src/CMakeFiles/sylvan.dir/sha2.c.o.provides.build
.PHONY : src/CMakeFiles/sylvan.dir/sha2.c.o.provides

src/CMakeFiles/sylvan.dir/sha2.c.o.provides.build: src/CMakeFiles/sylvan.dir/sha2.c.o


src/CMakeFiles/sylvan.dir/sylvan_bdd.c.o: src/CMakeFiles/sylvan.dir/flags.make
src/CMakeFiles/sylvan.dir/sylvan_bdd.c.o: ../src/sylvan_bdd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/CMakeFiles/sylvan.dir/sylvan_bdd.c.o"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sylvan.dir/sylvan_bdd.c.o   -c "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_bdd.c"

src/CMakeFiles/sylvan.dir/sylvan_bdd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sylvan.dir/sylvan_bdd.c.i"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_bdd.c" > CMakeFiles/sylvan.dir/sylvan_bdd.c.i

src/CMakeFiles/sylvan.dir/sylvan_bdd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sylvan.dir/sylvan_bdd.c.s"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_bdd.c" -o CMakeFiles/sylvan.dir/sylvan_bdd.c.s

src/CMakeFiles/sylvan.dir/sylvan_bdd.c.o.requires:

.PHONY : src/CMakeFiles/sylvan.dir/sylvan_bdd.c.o.requires

src/CMakeFiles/sylvan.dir/sylvan_bdd.c.o.provides: src/CMakeFiles/sylvan.dir/sylvan_bdd.c.o.requires
	$(MAKE) -f src/CMakeFiles/sylvan.dir/build.make src/CMakeFiles/sylvan.dir/sylvan_bdd.c.o.provides.build
.PHONY : src/CMakeFiles/sylvan.dir/sylvan_bdd.c.o.provides

src/CMakeFiles/sylvan.dir/sylvan_bdd.c.o.provides.build: src/CMakeFiles/sylvan.dir/sylvan_bdd.c.o


src/CMakeFiles/sylvan.dir/sylvan_cache.c.o: src/CMakeFiles/sylvan.dir/flags.make
src/CMakeFiles/sylvan.dir/sylvan_cache.c.o: ../src/sylvan_cache.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/CMakeFiles/sylvan.dir/sylvan_cache.c.o"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sylvan.dir/sylvan_cache.c.o   -c "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_cache.c"

src/CMakeFiles/sylvan.dir/sylvan_cache.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sylvan.dir/sylvan_cache.c.i"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_cache.c" > CMakeFiles/sylvan.dir/sylvan_cache.c.i

src/CMakeFiles/sylvan.dir/sylvan_cache.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sylvan.dir/sylvan_cache.c.s"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_cache.c" -o CMakeFiles/sylvan.dir/sylvan_cache.c.s

src/CMakeFiles/sylvan.dir/sylvan_cache.c.o.requires:

.PHONY : src/CMakeFiles/sylvan.dir/sylvan_cache.c.o.requires

src/CMakeFiles/sylvan.dir/sylvan_cache.c.o.provides: src/CMakeFiles/sylvan.dir/sylvan_cache.c.o.requires
	$(MAKE) -f src/CMakeFiles/sylvan.dir/build.make src/CMakeFiles/sylvan.dir/sylvan_cache.c.o.provides.build
.PHONY : src/CMakeFiles/sylvan.dir/sylvan_cache.c.o.provides

src/CMakeFiles/sylvan.dir/sylvan_cache.c.o.provides.build: src/CMakeFiles/sylvan.dir/sylvan_cache.c.o


src/CMakeFiles/sylvan.dir/sylvan_common.c.o: src/CMakeFiles/sylvan.dir/flags.make
src/CMakeFiles/sylvan.dir/sylvan_common.c.o: ../src/sylvan_common.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building C object src/CMakeFiles/sylvan.dir/sylvan_common.c.o"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sylvan.dir/sylvan_common.c.o   -c "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_common.c"

src/CMakeFiles/sylvan.dir/sylvan_common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sylvan.dir/sylvan_common.c.i"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_common.c" > CMakeFiles/sylvan.dir/sylvan_common.c.i

src/CMakeFiles/sylvan.dir/sylvan_common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sylvan.dir/sylvan_common.c.s"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_common.c" -o CMakeFiles/sylvan.dir/sylvan_common.c.s

src/CMakeFiles/sylvan.dir/sylvan_common.c.o.requires:

.PHONY : src/CMakeFiles/sylvan.dir/sylvan_common.c.o.requires

src/CMakeFiles/sylvan.dir/sylvan_common.c.o.provides: src/CMakeFiles/sylvan.dir/sylvan_common.c.o.requires
	$(MAKE) -f src/CMakeFiles/sylvan.dir/build.make src/CMakeFiles/sylvan.dir/sylvan_common.c.o.provides.build
.PHONY : src/CMakeFiles/sylvan.dir/sylvan_common.c.o.provides

src/CMakeFiles/sylvan.dir/sylvan_common.c.o.provides.build: src/CMakeFiles/sylvan.dir/sylvan_common.c.o


src/CMakeFiles/sylvan.dir/sylvan_gmp.c.o: src/CMakeFiles/sylvan.dir/flags.make
src/CMakeFiles/sylvan.dir/sylvan_gmp.c.o: ../src/sylvan_gmp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building C object src/CMakeFiles/sylvan.dir/sylvan_gmp.c.o"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sylvan.dir/sylvan_gmp.c.o   -c "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_gmp.c"

src/CMakeFiles/sylvan.dir/sylvan_gmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sylvan.dir/sylvan_gmp.c.i"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_gmp.c" > CMakeFiles/sylvan.dir/sylvan_gmp.c.i

src/CMakeFiles/sylvan.dir/sylvan_gmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sylvan.dir/sylvan_gmp.c.s"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_gmp.c" -o CMakeFiles/sylvan.dir/sylvan_gmp.c.s

src/CMakeFiles/sylvan.dir/sylvan_gmp.c.o.requires:

.PHONY : src/CMakeFiles/sylvan.dir/sylvan_gmp.c.o.requires

src/CMakeFiles/sylvan.dir/sylvan_gmp.c.o.provides: src/CMakeFiles/sylvan.dir/sylvan_gmp.c.o.requires
	$(MAKE) -f src/CMakeFiles/sylvan.dir/build.make src/CMakeFiles/sylvan.dir/sylvan_gmp.c.o.provides.build
.PHONY : src/CMakeFiles/sylvan.dir/sylvan_gmp.c.o.provides

src/CMakeFiles/sylvan.dir/sylvan_gmp.c.o.provides.build: src/CMakeFiles/sylvan.dir/sylvan_gmp.c.o


src/CMakeFiles/sylvan.dir/sylvan_ldd.c.o: src/CMakeFiles/sylvan.dir/flags.make
src/CMakeFiles/sylvan.dir/sylvan_ldd.c.o: ../src/sylvan_ldd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building C object src/CMakeFiles/sylvan.dir/sylvan_ldd.c.o"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sylvan.dir/sylvan_ldd.c.o   -c "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_ldd.c"

src/CMakeFiles/sylvan.dir/sylvan_ldd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sylvan.dir/sylvan_ldd.c.i"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_ldd.c" > CMakeFiles/sylvan.dir/sylvan_ldd.c.i

src/CMakeFiles/sylvan.dir/sylvan_ldd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sylvan.dir/sylvan_ldd.c.s"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_ldd.c" -o CMakeFiles/sylvan.dir/sylvan_ldd.c.s

src/CMakeFiles/sylvan.dir/sylvan_ldd.c.o.requires:

.PHONY : src/CMakeFiles/sylvan.dir/sylvan_ldd.c.o.requires

src/CMakeFiles/sylvan.dir/sylvan_ldd.c.o.provides: src/CMakeFiles/sylvan.dir/sylvan_ldd.c.o.requires
	$(MAKE) -f src/CMakeFiles/sylvan.dir/build.make src/CMakeFiles/sylvan.dir/sylvan_ldd.c.o.provides.build
.PHONY : src/CMakeFiles/sylvan.dir/sylvan_ldd.c.o.provides

src/CMakeFiles/sylvan.dir/sylvan_ldd.c.o.provides.build: src/CMakeFiles/sylvan.dir/sylvan_ldd.c.o


src/CMakeFiles/sylvan.dir/sylvan_mt.c.o: src/CMakeFiles/sylvan.dir/flags.make
src/CMakeFiles/sylvan.dir/sylvan_mt.c.o: ../src/sylvan_mt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building C object src/CMakeFiles/sylvan.dir/sylvan_mt.c.o"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sylvan.dir/sylvan_mt.c.o   -c "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_mt.c"

src/CMakeFiles/sylvan.dir/sylvan_mt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sylvan.dir/sylvan_mt.c.i"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_mt.c" > CMakeFiles/sylvan.dir/sylvan_mt.c.i

src/CMakeFiles/sylvan.dir/sylvan_mt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sylvan.dir/sylvan_mt.c.s"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_mt.c" -o CMakeFiles/sylvan.dir/sylvan_mt.c.s

src/CMakeFiles/sylvan.dir/sylvan_mt.c.o.requires:

.PHONY : src/CMakeFiles/sylvan.dir/sylvan_mt.c.o.requires

src/CMakeFiles/sylvan.dir/sylvan_mt.c.o.provides: src/CMakeFiles/sylvan.dir/sylvan_mt.c.o.requires
	$(MAKE) -f src/CMakeFiles/sylvan.dir/build.make src/CMakeFiles/sylvan.dir/sylvan_mt.c.o.provides.build
.PHONY : src/CMakeFiles/sylvan.dir/sylvan_mt.c.o.provides

src/CMakeFiles/sylvan.dir/sylvan_mt.c.o.provides.build: src/CMakeFiles/sylvan.dir/sylvan_mt.c.o


src/CMakeFiles/sylvan.dir/sylvan_mtbdd.c.o: src/CMakeFiles/sylvan.dir/flags.make
src/CMakeFiles/sylvan.dir/sylvan_mtbdd.c.o: ../src/sylvan_mtbdd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building C object src/CMakeFiles/sylvan.dir/sylvan_mtbdd.c.o"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sylvan.dir/sylvan_mtbdd.c.o   -c "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_mtbdd.c"

src/CMakeFiles/sylvan.dir/sylvan_mtbdd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sylvan.dir/sylvan_mtbdd.c.i"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_mtbdd.c" > CMakeFiles/sylvan.dir/sylvan_mtbdd.c.i

src/CMakeFiles/sylvan.dir/sylvan_mtbdd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sylvan.dir/sylvan_mtbdd.c.s"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_mtbdd.c" -o CMakeFiles/sylvan.dir/sylvan_mtbdd.c.s

src/CMakeFiles/sylvan.dir/sylvan_mtbdd.c.o.requires:

.PHONY : src/CMakeFiles/sylvan.dir/sylvan_mtbdd.c.o.requires

src/CMakeFiles/sylvan.dir/sylvan_mtbdd.c.o.provides: src/CMakeFiles/sylvan.dir/sylvan_mtbdd.c.o.requires
	$(MAKE) -f src/CMakeFiles/sylvan.dir/build.make src/CMakeFiles/sylvan.dir/sylvan_mtbdd.c.o.provides.build
.PHONY : src/CMakeFiles/sylvan.dir/sylvan_mtbdd.c.o.provides

src/CMakeFiles/sylvan.dir/sylvan_mtbdd.c.o.provides.build: src/CMakeFiles/sylvan.dir/sylvan_mtbdd.c.o


src/CMakeFiles/sylvan.dir/sylvan_obj.cpp.o: src/CMakeFiles/sylvan.dir/flags.make
src/CMakeFiles/sylvan.dir/sylvan_obj.cpp.o: ../src/sylvan_obj.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/CMakeFiles/sylvan.dir/sylvan_obj.cpp.o"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sylvan.dir/sylvan_obj.cpp.o -c "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_obj.cpp"

src/CMakeFiles/sylvan.dir/sylvan_obj.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sylvan.dir/sylvan_obj.cpp.i"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_obj.cpp" > CMakeFiles/sylvan.dir/sylvan_obj.cpp.i

src/CMakeFiles/sylvan.dir/sylvan_obj.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sylvan.dir/sylvan_obj.cpp.s"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_obj.cpp" -o CMakeFiles/sylvan.dir/sylvan_obj.cpp.s

src/CMakeFiles/sylvan.dir/sylvan_obj.cpp.o.requires:

.PHONY : src/CMakeFiles/sylvan.dir/sylvan_obj.cpp.o.requires

src/CMakeFiles/sylvan.dir/sylvan_obj.cpp.o.provides: src/CMakeFiles/sylvan.dir/sylvan_obj.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/sylvan.dir/build.make src/CMakeFiles/sylvan.dir/sylvan_obj.cpp.o.provides.build
.PHONY : src/CMakeFiles/sylvan.dir/sylvan_obj.cpp.o.provides

src/CMakeFiles/sylvan.dir/sylvan_obj.cpp.o.provides.build: src/CMakeFiles/sylvan.dir/sylvan_obj.cpp.o


src/CMakeFiles/sylvan.dir/sylvan_refs.c.o: src/CMakeFiles/sylvan.dir/flags.make
src/CMakeFiles/sylvan.dir/sylvan_refs.c.o: ../src/sylvan_refs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "Building C object src/CMakeFiles/sylvan.dir/sylvan_refs.c.o"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sylvan.dir/sylvan_refs.c.o   -c "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_refs.c"

src/CMakeFiles/sylvan.dir/sylvan_refs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sylvan.dir/sylvan_refs.c.i"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_refs.c" > CMakeFiles/sylvan.dir/sylvan_refs.c.i

src/CMakeFiles/sylvan.dir/sylvan_refs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sylvan.dir/sylvan_refs.c.s"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_refs.c" -o CMakeFiles/sylvan.dir/sylvan_refs.c.s

src/CMakeFiles/sylvan.dir/sylvan_refs.c.o.requires:

.PHONY : src/CMakeFiles/sylvan.dir/sylvan_refs.c.o.requires

src/CMakeFiles/sylvan.dir/sylvan_refs.c.o.provides: src/CMakeFiles/sylvan.dir/sylvan_refs.c.o.requires
	$(MAKE) -f src/CMakeFiles/sylvan.dir/build.make src/CMakeFiles/sylvan.dir/sylvan_refs.c.o.provides.build
.PHONY : src/CMakeFiles/sylvan.dir/sylvan_refs.c.o.provides

src/CMakeFiles/sylvan.dir/sylvan_refs.c.o.provides.build: src/CMakeFiles/sylvan.dir/sylvan_refs.c.o


src/CMakeFiles/sylvan.dir/sylvan_sl.c.o: src/CMakeFiles/sylvan.dir/flags.make
src/CMakeFiles/sylvan.dir/sylvan_sl.c.o: ../src/sylvan_sl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_12) "Building C object src/CMakeFiles/sylvan.dir/sylvan_sl.c.o"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sylvan.dir/sylvan_sl.c.o   -c "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_sl.c"

src/CMakeFiles/sylvan.dir/sylvan_sl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sylvan.dir/sylvan_sl.c.i"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_sl.c" > CMakeFiles/sylvan.dir/sylvan_sl.c.i

src/CMakeFiles/sylvan.dir/sylvan_sl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sylvan.dir/sylvan_sl.c.s"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_sl.c" -o CMakeFiles/sylvan.dir/sylvan_sl.c.s

src/CMakeFiles/sylvan.dir/sylvan_sl.c.o.requires:

.PHONY : src/CMakeFiles/sylvan.dir/sylvan_sl.c.o.requires

src/CMakeFiles/sylvan.dir/sylvan_sl.c.o.provides: src/CMakeFiles/sylvan.dir/sylvan_sl.c.o.requires
	$(MAKE) -f src/CMakeFiles/sylvan.dir/build.make src/CMakeFiles/sylvan.dir/sylvan_sl.c.o.provides.build
.PHONY : src/CMakeFiles/sylvan.dir/sylvan_sl.c.o.provides

src/CMakeFiles/sylvan.dir/sylvan_sl.c.o.provides.build: src/CMakeFiles/sylvan.dir/sylvan_sl.c.o


src/CMakeFiles/sylvan.dir/sylvan_stats.c.o: src/CMakeFiles/sylvan.dir/flags.make
src/CMakeFiles/sylvan.dir/sylvan_stats.c.o: ../src/sylvan_stats.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_13) "Building C object src/CMakeFiles/sylvan.dir/sylvan_stats.c.o"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sylvan.dir/sylvan_stats.c.o   -c "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_stats.c"

src/CMakeFiles/sylvan.dir/sylvan_stats.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sylvan.dir/sylvan_stats.c.i"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_stats.c" > CMakeFiles/sylvan.dir/sylvan_stats.c.i

src/CMakeFiles/sylvan.dir/sylvan_stats.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sylvan.dir/sylvan_stats.c.s"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_stats.c" -o CMakeFiles/sylvan.dir/sylvan_stats.c.s

src/CMakeFiles/sylvan.dir/sylvan_stats.c.o.requires:

.PHONY : src/CMakeFiles/sylvan.dir/sylvan_stats.c.o.requires

src/CMakeFiles/sylvan.dir/sylvan_stats.c.o.provides: src/CMakeFiles/sylvan.dir/sylvan_stats.c.o.requires
	$(MAKE) -f src/CMakeFiles/sylvan.dir/build.make src/CMakeFiles/sylvan.dir/sylvan_stats.c.o.provides.build
.PHONY : src/CMakeFiles/sylvan.dir/sylvan_stats.c.o.provides

src/CMakeFiles/sylvan.dir/sylvan_stats.c.o.provides.build: src/CMakeFiles/sylvan.dir/sylvan_stats.c.o


src/CMakeFiles/sylvan.dir/sylvan_table.c.o: src/CMakeFiles/sylvan.dir/flags.make
src/CMakeFiles/sylvan.dir/sylvan_table.c.o: ../src/sylvan_table.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_14) "Building C object src/CMakeFiles/sylvan.dir/sylvan_table.c.o"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sylvan.dir/sylvan_table.c.o   -c "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_table.c"

src/CMakeFiles/sylvan.dir/sylvan_table.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sylvan.dir/sylvan_table.c.i"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_table.c" > CMakeFiles/sylvan.dir/sylvan_table.c.i

src/CMakeFiles/sylvan.dir/sylvan_table.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sylvan.dir/sylvan_table.c.s"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_table.c" -o CMakeFiles/sylvan.dir/sylvan_table.c.s

src/CMakeFiles/sylvan.dir/sylvan_table.c.o.requires:

.PHONY : src/CMakeFiles/sylvan.dir/sylvan_table.c.o.requires

src/CMakeFiles/sylvan.dir/sylvan_table.c.o.provides: src/CMakeFiles/sylvan.dir/sylvan_table.c.o.requires
	$(MAKE) -f src/CMakeFiles/sylvan.dir/build.make src/CMakeFiles/sylvan.dir/sylvan_table.c.o.provides.build
.PHONY : src/CMakeFiles/sylvan.dir/sylvan_table.c.o.provides

src/CMakeFiles/sylvan.dir/sylvan_table.c.o.provides.build: src/CMakeFiles/sylvan.dir/sylvan_table.c.o


# Object files for target sylvan
sylvan_OBJECTS = \
"CMakeFiles/sylvan.dir/lace.c.o" \
"CMakeFiles/sylvan.dir/sha2.c.o" \
"CMakeFiles/sylvan.dir/sylvan_bdd.c.o" \
"CMakeFiles/sylvan.dir/sylvan_cache.c.o" \
"CMakeFiles/sylvan.dir/sylvan_common.c.o" \
"CMakeFiles/sylvan.dir/sylvan_gmp.c.o" \
"CMakeFiles/sylvan.dir/sylvan_ldd.c.o" \
"CMakeFiles/sylvan.dir/sylvan_mt.c.o" \
"CMakeFiles/sylvan.dir/sylvan_mtbdd.c.o" \
"CMakeFiles/sylvan.dir/sylvan_obj.cpp.o" \
"CMakeFiles/sylvan.dir/sylvan_refs.c.o" \
"CMakeFiles/sylvan.dir/sylvan_sl.c.o" \
"CMakeFiles/sylvan.dir/sylvan_stats.c.o" \
"CMakeFiles/sylvan.dir/sylvan_table.c.o"

# External object files for target sylvan
sylvan_EXTERNAL_OBJECTS =

src/libsylvan.so: src/CMakeFiles/sylvan.dir/lace.c.o
src/libsylvan.so: src/CMakeFiles/sylvan.dir/sha2.c.o
src/libsylvan.so: src/CMakeFiles/sylvan.dir/sylvan_bdd.c.o
src/libsylvan.so: src/CMakeFiles/sylvan.dir/sylvan_cache.c.o
src/libsylvan.so: src/CMakeFiles/sylvan.dir/sylvan_common.c.o
src/libsylvan.so: src/CMakeFiles/sylvan.dir/sylvan_gmp.c.o
src/libsylvan.so: src/CMakeFiles/sylvan.dir/sylvan_ldd.c.o
src/libsylvan.so: src/CMakeFiles/sylvan.dir/sylvan_mt.c.o
src/libsylvan.so: src/CMakeFiles/sylvan.dir/sylvan_mtbdd.c.o
src/libsylvan.so: src/CMakeFiles/sylvan.dir/sylvan_obj.cpp.o
src/libsylvan.so: src/CMakeFiles/sylvan.dir/sylvan_refs.c.o
src/libsylvan.so: src/CMakeFiles/sylvan.dir/sylvan_sl.c.o
src/libsylvan.so: src/CMakeFiles/sylvan.dir/sylvan_stats.c.o
src/libsylvan.so: src/CMakeFiles/sylvan.dir/sylvan_table.c.o
src/libsylvan.so: src/CMakeFiles/sylvan.dir/build.make
src/libsylvan.so: /usr/lib/x86_64-linux-gnu/libgmp.so
src/libsylvan.so: src/CMakeFiles/sylvan.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX shared library libsylvan.so"
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sylvan.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/sylvan.dir/build: src/libsylvan.so

.PHONY : src/CMakeFiles/sylvan.dir/build

src/CMakeFiles/sylvan.dir/requires: src/CMakeFiles/sylvan.dir/lace.c.o.requires
src/CMakeFiles/sylvan.dir/requires: src/CMakeFiles/sylvan.dir/sha2.c.o.requires
src/CMakeFiles/sylvan.dir/requires: src/CMakeFiles/sylvan.dir/sylvan_bdd.c.o.requires
src/CMakeFiles/sylvan.dir/requires: src/CMakeFiles/sylvan.dir/sylvan_cache.c.o.requires
src/CMakeFiles/sylvan.dir/requires: src/CMakeFiles/sylvan.dir/sylvan_common.c.o.requires
src/CMakeFiles/sylvan.dir/requires: src/CMakeFiles/sylvan.dir/sylvan_gmp.c.o.requires
src/CMakeFiles/sylvan.dir/requires: src/CMakeFiles/sylvan.dir/sylvan_ldd.c.o.requires
src/CMakeFiles/sylvan.dir/requires: src/CMakeFiles/sylvan.dir/sylvan_mt.c.o.requires
src/CMakeFiles/sylvan.dir/requires: src/CMakeFiles/sylvan.dir/sylvan_mtbdd.c.o.requires
src/CMakeFiles/sylvan.dir/requires: src/CMakeFiles/sylvan.dir/sylvan_obj.cpp.o.requires
src/CMakeFiles/sylvan.dir/requires: src/CMakeFiles/sylvan.dir/sylvan_refs.c.o.requires
src/CMakeFiles/sylvan.dir/requires: src/CMakeFiles/sylvan.dir/sylvan_sl.c.o.requires
src/CMakeFiles/sylvan.dir/requires: src/CMakeFiles/sylvan.dir/sylvan_stats.c.o.requires
src/CMakeFiles/sylvan.dir/requires: src/CMakeFiles/sylvan.dir/sylvan_table.c.o.requires

.PHONY : src/CMakeFiles/sylvan.dir/requires

src/CMakeFiles/sylvan.dir/clean:
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" && $(CMAKE_COMMAND) -P CMakeFiles/sylvan.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/sylvan.dir/clean

src/CMakeFiles/sylvan.dir/depend:
	cd "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master" "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src" "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build" "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src" "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src/CMakeFiles/sylvan.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : src/CMakeFiles/sylvan.dir/depend

