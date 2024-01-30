# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include;/usr/include/opencv".split(';') if "${prefix}/include;/usr/include;/usr/include/opencv" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;tf".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lswri_geometry_util;/usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0".split(';') if "-lswri_geometry_util;/usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0" != "" else []
PROJECT_NAME = "swri_geometry_util"
PROJECT_SPACE_DIR = "/home/khoa/catkin_ws/install"
PROJECT_VERSION = "2.14.2"
