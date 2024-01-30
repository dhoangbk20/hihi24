# Install script for directory: /home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi

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
  include("/home/khoa/catkin_ws/build/rosbridge_suite-master/rosapi/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosapi/msg" TYPE FILE FILES "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/msg/TypeDef.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosapi/srv" TYPE FILE FILES
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/DeleteParam.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/GetActionServers.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/GetParam.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/GetParamNames.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/GetTime.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/HasParam.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/MessageDetails.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/Nodes.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/NodeDetails.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/Publishers.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/SearchParam.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/ServiceHost.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/ServiceNode.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/ServiceProviders.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/ServiceRequestDetails.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/ServiceResponseDetails.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/Services.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/ServicesForType.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/ServiceType.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/SetParam.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/Subscribers.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/Topics.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/TopicsAndRawTypes.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/TopicsForType.srv"
    "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/srv/TopicType.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosapi/cmake" TYPE FILE FILES "/home/khoa/catkin_ws/build/rosbridge_suite-master/rosapi/catkin_generated/installspace/rosapi-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/khoa/catkin_ws/devel/include/rosapi")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/khoa/catkin_ws/devel/share/roseus/ros/rosapi")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/khoa/catkin_ws/devel/share/common-lisp/ros/rosapi")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/khoa/catkin_ws/devel/share/gennodejs/ros/rosapi")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/khoa/catkin_ws/devel/lib/python2.7/dist-packages/rosapi")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/khoa/catkin_ws/devel/lib/python2.7/dist-packages/rosapi" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/khoa/catkin_ws/devel/lib/python2.7/dist-packages/rosapi" FILES_MATCHING REGEX "/home/khoa/catkin_ws/devel/lib/python2.7/dist-packages/rosapi/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/khoa/catkin_ws/build/rosbridge_suite-master/rosapi/catkin_generated/installspace/rosapi.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosapi/cmake" TYPE FILE FILES "/home/khoa/catkin_ws/build/rosbridge_suite-master/rosapi/catkin_generated/installspace/rosapi-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosapi/cmake" TYPE FILE FILES
    "/home/khoa/catkin_ws/build/rosbridge_suite-master/rosapi/catkin_generated/installspace/rosapiConfig.cmake"
    "/home/khoa/catkin_ws/build/rosbridge_suite-master/rosapi/catkin_generated/installspace/rosapiConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosapi" TYPE FILE FILES "/home/khoa/catkin_ws/src/rosbridge_suite-master/rosapi/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rosapi" TYPE PROGRAM FILES "/home/khoa/catkin_ws/build/rosbridge_suite-master/rosapi/catkin_generated/installspace/rosapi_node")
endif()

