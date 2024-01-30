# Install script for directory: /home/khoa/catkin_ws/src/marti_common-master/swri_prefix_tools

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/khoa/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/khoa/catkin_ws/build/marti_common-master/swri_prefix_tools/catkin_generated/installspace/swri_prefix_tools.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swri_prefix_tools/cmake" TYPE FILE FILES
    "/home/khoa/catkin_ws/build/marti_common-master/swri_prefix_tools/catkin_generated/installspace/swri_prefix_toolsConfig.cmake"
    "/home/khoa/catkin_ws/build/marti_common-master/swri_prefix_tools/catkin_generated/installspace/swri_prefix_toolsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swri_prefix_tools" TYPE FILE FILES "/home/khoa/catkin_ws/src/marti_common-master/swri_prefix_tools/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swri_prefix_tools" TYPE PROGRAM FILES "/home/khoa/catkin_ws/build/marti_common-master/swri_prefix_tools/catkin_generated/installspace/xterm_prefix")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swri_prefix_tools" TYPE PROGRAM FILES
    "/home/khoa/catkin_ws/src/marti_common-master/swri_prefix_tools/xterm_prefix_callgrind"
    "/home/khoa/catkin_ws/src/marti_common-master/swri_prefix_tools/xterm_prefix_callgrind_wait"
    "/home/khoa/catkin_ws/src/marti_common-master/swri_prefix_tools/xterm_prefix_gdb"
    "/home/khoa/catkin_ws/src/marti_common-master/swri_prefix_tools/xterm_prefix_hold"
    "/home/khoa/catkin_ws/src/marti_common-master/swri_prefix_tools/xterm_prefix_normal"
    )
endif()

