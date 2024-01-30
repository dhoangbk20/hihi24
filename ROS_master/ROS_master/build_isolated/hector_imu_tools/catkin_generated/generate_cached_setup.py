# -*- coding: utf-8 -*-
from __future__ import print_function

import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/melodic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/melodic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in '/home/khoa/catkin_ws/devel_isolated/hector_imu_attitude_to_tf;/home/khoa/catkin_ws/devel_isolated/tf;/home/khoa/catkin_ws/devel_isolated/tf2_ros;/home/khoa/catkin_ws/devel_isolated/tf2_py;/home/khoa/catkin_ws/devel_isolated/tf2_eigen;/home/khoa/catkin_ws/devel_isolated/tf2_bullet;/home/khoa/catkin_ws/devel_isolated/map_server;/home/khoa/catkin_ws/devel_isolated/tf2;/home/khoa/catkin_ws/devel_isolated/tf2_msgs;/home/khoa/catkin_ws/devel_isolated/test_launches;/home/khoa/catkin_ws/devel_isolated/teleop_twist_keyboard;/home/khoa/catkin_ws/devel_isolated/teleop_twist_joy;/home/khoa/catkin_ws/devel_isolated/teb_navigation;/home/khoa/catkin_ws/devel_isolated/scan_tools;/home/khoa/catkin_ws/devel_isolated/scan_to_cloud_converter;/home/khoa/catkin_ws/devel_isolated/rviz_satellite;/home/khoa/catkin_ws/devel_isolated/rviz_distance_tool;/home/khoa/catkin_ws/devel_isolated/rplidar_ros;/home/khoa/catkin_ws/devel_isolated/route_network;/home/khoa/catkin_ws/devel_isolated/rosserial_xbee;/home/khoa/catkin_ws/devel_isolated/rosserial_vex_v5;/home/khoa/catkin_ws/devel_isolated/rosserial_vex_cortex;/home/khoa/catkin_ws/devel_isolated/rosserial_tivac;/home/khoa/catkin_ws/devel_isolated/rosserial_server;/home/khoa/catkin_ws/devel_isolated/rosserial_python;/home/khoa/catkin_ws/devel_isolated/rosserial_client;/home/khoa/catkin_ws/devel_isolated/rosserial_msgs;/home/khoa/catkin_ws/devel_isolated/rosserial_mbed;/home/khoa/catkin_ws/devel_isolated/rosserial_arduino;/home/khoa/catkin_ws/devel_isolated/rosserial;/home/khoa/catkin_ws/devel_isolated/nmea_msgs;/home/khoa/catkin_ws/devel_isolated/navigation;/home/khoa/catkin_ws/devel_isolated/my_summit_path_planning;/home/khoa/catkin_ws/devel_isolated/my_summit_mapping;/home/khoa/catkin_ws/devel_isolated/my_summit_localization;/home/khoa/catkin_ws/devel_isolated/my_move_base;/home/khoa/catkin_ws/devel_isolated/my_laser_matcher;/home/khoa/catkin_ws/devel_isolated/mpu_6050_driver;/home/khoa/catkin_ws/devel_isolated/mobile_robot_simulation;/home/khoa/catkin_ws/devel_isolated/mobile_robot_base;/home/khoa/catkin_ws/devel_isolated/mobile_mini;/home/khoa/catkin_ws/devel_isolated/marti_visualization_msgs;/home/khoa/catkin_ws/devel_isolated/marti_status_msgs;/home/khoa/catkin_ws/devel_isolated/marti_sensor_msgs;/home/khoa/catkin_ws/devel_isolated/marti_perception_msgs;/home/khoa/catkin_ws/devel_isolated/marti_nav_msgs;/home/khoa/catkin_ws/devel_isolated/marti_dbw_msgs;/home/khoa/catkin_ws/devel_isolated/marti_common_msgs;/home/khoa/catkin_ws/devel_isolated/marti_can_msgs;/home/khoa/catkin_ws/devel_isolated/laser_scan_splitter;/home/khoa/catkin_ws/devel_isolated/laser_scan_sparsifier;/home/khoa/catkin_ws/devel_isolated/kdl_conversions;/home/khoa/catkin_ws/devel_isolated/hector_slam_launch;/home/khoa/catkin_ws/devel_isolated/hector_slam;/home/khoa/catkin_ws/devel_isolated/hector_geotiff_plugins;/home/khoa/catkin_ws/devel_isolated/hector_geotiff;/home/khoa/catkin_ws/devel_isolated/hector_nav_msgs;/home/khoa/catkin_ws/devel_isolated/hector_marker_drawing;/home/khoa/catkin_ws/devel_isolated/hector_compressed_map_transport;/home/khoa/catkin_ws/devel_isolated/hector_map_tools;/home/khoa/catkin_ws/devel_isolated/gps_rviz_plugin;/home/khoa/catkin_ws/devel_isolated/gps_navigation;/home/khoa/catkin_ws/devel_isolated/geometry2;/home/khoa/catkin_ws/devel_isolated/geometry;/home/khoa/catkin_ws/devel_isolated/eigen_conversions;/home/khoa/catkin_ws/devel_isolated/Sub;/home/khoa/catkin_ws/devel;/opt/ros/melodic'.split(';'):
        python_path = os.path.join(workspace, 'lib/python2.7/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/khoa/catkin_ws/devel_isolated/hector_imu_tools/env.sh')

output_filename = '/home/khoa/catkin_ws/build_isolated/hector_imu_tools/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    # print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
