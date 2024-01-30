# CMake generated Testfile for 
# Source directory: /home/khoa/catkin_ws/src/scan_tools/laser_scan_matcher
# Build directory: /home/khoa/catkin_ws/build_isolated/laser_scan_matcher
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_laser_scan_matcher_rostest_test_run.test "/home/khoa/catkin_ws/build_isolated/laser_scan_matcher/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/khoa/catkin_ws/build_isolated/laser_scan_matcher/test_results/laser_scan_matcher/rostest-test_run.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/khoa/catkin_ws/src/scan_tools/laser_scan_matcher --package=laser_scan_matcher --results-filename test_run.xml --results-base-dir \"/home/khoa/catkin_ws/build_isolated/laser_scan_matcher/test_results\" /home/khoa/catkin_ws/src/scan_tools/laser_scan_matcher/test/run.test ")
add_test(_ctest_laser_scan_matcher_rostest_test_covariance.test "/home/khoa/catkin_ws/build_isolated/laser_scan_matcher/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/khoa/catkin_ws/build_isolated/laser_scan_matcher/test_results/laser_scan_matcher/rostest-test_covariance.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/khoa/catkin_ws/src/scan_tools/laser_scan_matcher --package=laser_scan_matcher --results-filename test_covariance.xml --results-base-dir \"/home/khoa/catkin_ws/build_isolated/laser_scan_matcher/test_results\" /home/khoa/catkin_ws/src/scan_tools/laser_scan_matcher/test/covariance.test ")
subdirs("gtest")
