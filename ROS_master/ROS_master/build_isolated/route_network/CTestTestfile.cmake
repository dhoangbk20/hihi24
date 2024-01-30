# CMake generated Testfile for 
# Source directory: /home/khoa/catkin_ws/src/open_street_map/route_network
# Build directory: /home/khoa/catkin_ws/build_isolated/route_network
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_route_network_rostest_tests_planner.test "/home/khoa/catkin_ws/build_isolated/route_network/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/khoa/catkin_ws/build_isolated/route_network/test_results/route_network/rostest-tests_planner.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/khoa/catkin_ws/src/open_street_map/route_network --package=route_network --results-filename tests_planner.xml --results-base-dir \"/home/khoa/catkin_ws/build_isolated/route_network/test_results\" /home/khoa/catkin_ws/src/open_street_map/route_network/tests/planner.test ")
add_test(_ctest_route_network_roslaunch-check_launch "/home/khoa/catkin_ws/build_isolated/route_network/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/khoa/catkin_ws/build_isolated/route_network/test_results/route_network/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/khoa/catkin_ws/build_isolated/route_network/test_results/route_network" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/khoa/catkin_ws/build_isolated/route_network/test_results/route_network/roslaunch-check_launch.xml\" \"/home/khoa/catkin_ws/src/open_street_map/route_network/launch\" ")
subdirs("gtest")
