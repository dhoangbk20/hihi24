# CMake generated Testfile for 
# Source directory: /home/pi/catkin_ws_1/src/rosserial/rosserial_client
# Build directory: /home/pi/catkin_ws_1/build_isolated/rosserial_client
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rosserial_client_gtest_float64_test "/home/pi/catkin_ws_1/build_isolated/rosserial_client/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/pi/catkin_ws_1/build_isolated/rosserial_client/test_results/rosserial_client/gtest-float64_test.xml" "--return-code" "/home/pi/catkin_ws_1/devel_isolated/rosserial_client/lib/rosserial_client/float64_test --gtest_output=xml:/home/pi/catkin_ws_1/build_isolated/rosserial_client/test_results/rosserial_client/gtest-float64_test.xml")
add_test(_ctest_rosserial_client_gtest_subscriber_test "/home/pi/catkin_ws_1/build_isolated/rosserial_client/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/pi/catkin_ws_1/build_isolated/rosserial_client/test_results/rosserial_client/gtest-subscriber_test.xml" "--return-code" "/home/pi/catkin_ws_1/devel_isolated/rosserial_client/lib/rosserial_client/subscriber_test --gtest_output=xml:/home/pi/catkin_ws_1/build_isolated/rosserial_client/test_results/rosserial_client/gtest-subscriber_test.xml")
add_test(_ctest_rosserial_client_gtest_time_test "/home/pi/catkin_ws_1/build_isolated/rosserial_client/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/pi/catkin_ws_1/build_isolated/rosserial_client/test_results/rosserial_client/gtest-time_test.xml" "--return-code" "/home/pi/catkin_ws_1/devel_isolated/rosserial_client/lib/rosserial_client/time_test --gtest_output=xml:/home/pi/catkin_ws_1/build_isolated/rosserial_client/test_results/rosserial_client/gtest-time_test.xml")
subdirs("gtest")
