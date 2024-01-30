#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/pi/catkin_ws_1/src/ros_comm/tools/rosmaster"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/pi/catkin_ws_1/install_isolated/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/pi/catkin_ws_1/install_isolated/lib/python2.7/dist-packages:/home/pi/catkin_ws_1/build_isolated/rosmaster/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/pi/catkin_ws_1/build_isolated/rosmaster" \
    "/usr/bin/python" \
    "/home/pi/catkin_ws_1/src/ros_comm/tools/rosmaster/setup.py" \
    build --build-base "/home/pi/catkin_ws_1/build_isolated/rosmaster" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/pi/catkin_ws_1/install_isolated" --install-scripts="/home/pi/catkin_ws_1/install_isolated/bin"
