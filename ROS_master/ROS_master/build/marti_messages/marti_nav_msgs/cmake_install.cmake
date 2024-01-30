# Install script for directory: /home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/marti_nav_msgs/msg" TYPE FILE FILES
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/Command.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/GridMap.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/LeadVehicle.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/Obstacle.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/ObstacleArray.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/PathPlanning.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/Path.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/PathPoint.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/Route.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/RouteArray.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/RouteOffset.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/RoutePoint.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/RoutePosition.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/RouteSpeed.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/RouteSpeedArray.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/TeleopState.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/TrackedObject.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/TrackedObjectArray.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/VehicleControl.msg"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/msg/Wgs84Sample.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/marti_nav_msgs/srv" TYPE FILE FILES
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/srv/DeleteRoute.srv"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/srv/GetRoute.srv"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/srv/GetRouteList.srv"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/srv/PlanRoute.srv"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/srv/SaveRecordedRoute.srv"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/srv/SaveRoute.srv"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/srv/SetRoute.srv"
    "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/srv/UpdateRouteMetadata.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/marti_nav_msgs/cmake" TYPE FILE FILES "/home/khoa/catkin_ws/build/marti_messages/marti_nav_msgs/catkin_generated/installspace/marti_nav_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/khoa/catkin_ws/devel/include/marti_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/khoa/catkin_ws/devel/share/roseus/ros/marti_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/khoa/catkin_ws/devel/share/common-lisp/ros/marti_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/khoa/catkin_ws/devel/share/gennodejs/ros/marti_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/khoa/catkin_ws/devel/lib/python2.7/dist-packages/marti_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/khoa/catkin_ws/devel/lib/python2.7/dist-packages/marti_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/khoa/catkin_ws/build/marti_messages/marti_nav_msgs/catkin_generated/installspace/marti_nav_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/marti_nav_msgs/cmake" TYPE FILE FILES "/home/khoa/catkin_ws/build/marti_messages/marti_nav_msgs/catkin_generated/installspace/marti_nav_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/marti_nav_msgs/cmake" TYPE FILE FILES
    "/home/khoa/catkin_ws/build/marti_messages/marti_nav_msgs/catkin_generated/installspace/marti_nav_msgsConfig.cmake"
    "/home/khoa/catkin_ws/build/marti_messages/marti_nav_msgs/catkin_generated/installspace/marti_nav_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/marti_nav_msgs" TYPE FILE FILES "/home/khoa/catkin_ws/src/marti_messages/marti_nav_msgs/package.xml")
endif()

