# CMake generated Testfile for 
# Source directory: /home/pi/catkin_ws_1/src/ros_comm/test/test_roslib_comm
# Build directory: /home/pi/catkin_ws_1/build_isolated/test_roslib_comm
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_test_roslib_comm_nosetests_test "/home/pi/catkin_ws_1/build_isolated/test_roslib_comm/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/pi/catkin_ws_1/build_isolated/test_roslib_comm/test_results/test_roslib_comm/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/pi/catkin_ws_1/build_isolated/test_roslib_comm/test_results/test_roslib_comm" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/pi/catkin_ws_1/src/ros_comm/test/test_roslib_comm/test --with-xunit --xunit-file=/home/pi/catkin_ws_1/build_isolated/test_roslib_comm/test_results/test_roslib_comm/nosetests-test.xml")
subdirs("gtest")
