# Install script for directory: /vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsylvan.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsylvan.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsylvan.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/build/src/libsylvan.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsylvan.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsylvan.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsylvan.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/lace.h"
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan.h"
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_bdd.h"
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_cache.h"
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_config.h"
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_common.h"
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_gmp.h"
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_int.h"
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_ldd.h"
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_ldd_int.h"
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_mt.h"
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_mtbdd.h"
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_mtbdd_int.h"
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_obj.hpp"
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_stats.h"
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_table.h"
    "/vol/home/s1560700/Documents/Master/jaar 2/final_vec/sylvan-master/src/sylvan_tls.h"
    )
endif()

