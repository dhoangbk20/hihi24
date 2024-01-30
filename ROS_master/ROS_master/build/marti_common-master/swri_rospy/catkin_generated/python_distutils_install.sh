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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/khoa/catkin_ws/src/marti_common-master/swri_rospy"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/khoa/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/khoa/catkin_ws/install/lib/python2.7/dist-packages:/home/khoa/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/khoa/catkin_ws/build" \
    "/usr/bin/python2" \
    "/home/khoa/catkin_ws/src/marti_common-master/swri_rospy/setup.py" \
    egg_info --egg-base /home/khoa/catkin_ws/build/marti_common-master/swri_rospy \
    build --build-base "/home/khoa/catkin_ws/build/marti_common-master/swri_rospy" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/khoa/catkin_ws/install" --install-scripts="/home/khoa/catkin_ws/install/bin"
