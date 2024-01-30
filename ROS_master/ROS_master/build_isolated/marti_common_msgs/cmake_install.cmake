# Install script for directory: /home/khoa/catkin_ws/src/marti_messages/marti_common_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/khoa/catkin_ws/install_isolated")
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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/khoa/catkin_ws/install_isolated/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/khoa/catkin_ws/install_isolated" TYPE PROGRAM FILES "/home/khoa/catkin_ws/build_isolated/marti_common_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/khoa/catkin_ws/install_isolated/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/khoa/catkin_ws/install_isolated" TYPE PROGRAM FILES "/home/khoa/catkin_ws/build_isolated/marti_common_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/khoa/catkin_ws/install_isolated/setup.bash;/home/khoa/catkin_ws/install_isolated/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/khoa/catkin_ws/install_isolated" TYPE FILE FILES
    "/home/khoa/catkin_ws/build_isolated/marti_common_msgs/catkin_generated/installspace/setup.bash"
    "/home/khoa/catkin_ws/build_isolated/marti_common_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/khoa/catkin_ws/install_isolated/setup.sh;/home/khoa/catkin_ws/install_isolated/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/khoa/catkin_ws/install_isolated" TYPE FILE FILES
    "/home/khoa/catkin_ws/build_isolated/marti_common_msgs/catkin_generated/installspace/setup.sh"
    "/home/khoa/catkin_ws/build_isolated/marti_common_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/khoa/catkin_ws/install_isolated/setup.zsh;/home/khoa/catkin_ws/install_isolated/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/khoa/catkin_ws/install_isolated" TYPE FILE FILES
    "/home/khoa/catkin_ws/build_isolated/marti_common_msgs/catkin_generated/installspace/setup.zsh"
    "/home/khoa/catkin_ws/build_isolated/marti_common_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/khoa/catkin_ws/install_isolated/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/khoa/catkin_ws/install_isolated" TYPE FILE FILES "/home/khoa/catkin_ws/build_isolated/marti_common_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/marti_common_msgs/msg" TYPE FILE FILES
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/BoolStamped.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/ByteArrayStamped.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/DurationStamped.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/Float32Stamped.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/Float64Stamped.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/HealthStatus.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/Int16Stamped.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/Int32Stamped.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/Int64Stamped.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/Int8Stamped.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/KeyValue.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/KeyValueArray.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/Matrix3x3Stamped.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/ServiceHeader.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/StringArrayStamped.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/StringStamped.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/TimeStamped.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/UInt16Stamped.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/UInt32Stamped.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/UInt64Stamped.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg/UInt8Stamped.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/marti_common_msgs/cmake" TYPE FILE FILES "/home/khoa/catkin_ws/build_isolated/marti_common_msgs/catkin_generated/installspace/marti_common_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/khoa/catkin_ws/devel_isolated/marti_common_msgs/include/marti_common_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/khoa/catkin_ws/devel_isolated/marti_common_msgs/share/roseus/ros/marti_common_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/khoa/catkin_ws/devel_isolated/marti_common_msgs/share/common-lisp/ros/marti_common_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/khoa/catkin_ws/devel_isolated/marti_common_msgs/share/gennodejs/ros/marti_common_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/khoa/catkin_ws/devel_isolated/marti_common_msgs/lib/python2.7/dist-packages/marti_common_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/khoa/catkin_ws/devel_isolated/marti_common_msgs/lib/python2.7/dist-packages/marti_common_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/khoa/catkin_ws/build_isolated/marti_common_msgs/catkin_generated/installspace/marti_common_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/marti_common_msgs/cmake" TYPE FILE FILES "/home/khoa/catkin_ws/build_isolated/marti_common_msgs/catkin_generated/installspace/marti_common_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/marti_common_msgs/cmake" TYPE FILE FILES
    "/home/khoa/catkin_ws/build_isolated/marti_common_msgs/catkin_generated/installspace/marti_common_msgsConfig.cmake"
    "/home/khoa/catkin_ws/build_isolated/marti_common_msgs/catkin_generated/installspace/marti_common_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/marti_common_msgs" TYPE FILE FILES "/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/khoa/catkin_ws/build_isolated/marti_common_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/khoa/catkin_ws/build_isolated/marti_common_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
