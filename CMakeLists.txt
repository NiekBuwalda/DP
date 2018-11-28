cmake_minimum_required(VERSION 2.7)
project(piSat C CXX)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_BUILD_TYPE Debug)

add_definitions("-fPIC -Wall")
if(CMAKE_BUILD_TYPE STREQUAL "Debug")
  add_definitions("-DDEBUG=1 -g -O0 ")
endif()

subdirs(sylvan)

include_directories(src)
include_directories(sylvan/src)
link_directories(/vol/home/s1560700/Documents/Master/jaar2/final_vec/piSat/sylvan/src)

add_executable(piSat
    src/main.cpp
    src/DPLL/DPLL.h src/DPLL/DPLL.cpp
    src/DP/DP.h src/DP/DP.cpp
    src/structures/CNF.cpp src/structures/CNF.h
    src/structures/Clause.cpp src/structures/Clause.h
    src/structures/Literal.h
    src/structures/Variable.cpp src/structures/Variable.h
    src/util/parsefile.h src/util/parsefile.cpp
    src/util/util.h src/util/util.cpp
)

target_link_libraries(piSat sylvan)

ADD_CUSTOM_TARGET (distclean)

ADD_CUSTOM_COMMAND(
    DEPENDS clean
    COMMENT "distribution clean"
    COMMAND rm
    ARGS    -rf *.dSYM */*.dSYM Makefile */Makefile */CMakeFiles CMakeFiles CMakeCache.txt Makefile */Makefile  */CMakeCache.txt cmake_install.cmake */cmake_install.cmake
    TARGET  distclean
)
