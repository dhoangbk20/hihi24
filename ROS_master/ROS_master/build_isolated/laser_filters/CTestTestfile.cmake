# CMake generated Testfile for 
# Source directory: /home/khoa/catkin_ws/src/laser_filters
# Build directory: /home/khoa/catkin_ws/build_isolated/laser_filters
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_laser_filters_rostest_test_test_scan_filter_chain.launch "/home/khoa/catkin_ws/build_isolated/laser_filters/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/khoa/catkin_ws/build_isolated/laser_filters/test_results/laser_filters/rostest-test_test_scan_filter_chain.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/khoa/catkin_ws/src/laser_filters --package=laser_filters --results-filename test_test_scan_filter_chain.xml --results-base-dir \"/home/khoa/catkin_ws/build_isolated/laser_filters/test_results\" /home/khoa/catkin_ws/src/laser_filters/test/test_scan_filter_chain.launch ")
add_test(_ctest_laser_filters_gtest_test_shadow_detector "/home/khoa/catkin_ws/build_isolated/laser_filters/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/khoa/catkin_ws/build_isolated/laser_filters/test_results/laser_filters/gtest-test_shadow_detector.xml" "--return-code" "/home/khoa/catkin_ws/devel_isolated/laser_filters/lib/laser_filters/test_shadow_detector --gtest_output=xml:/home/khoa/catkin_ws/build_isolated/laser_filters/test_results/laser_filters/gtest-test_shadow_detector.xml")
subdirs("gtest")
