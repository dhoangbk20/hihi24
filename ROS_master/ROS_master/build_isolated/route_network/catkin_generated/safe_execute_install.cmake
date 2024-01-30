execute_process(COMMAND "/home/khoa/catkin_ws/build_isolated/route_network/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/khoa/catkin_ws/build_isolated/route_network/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
