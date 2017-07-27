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

echo_and_run cd "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/utilities/message_filters"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/turtlebot/turtlebot_plugin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/turtlebot/turtlebot_plugin_ws/install/lib/python2.7/dist-packages:/home/turtlebot/turtlebot_plugin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/turtlebot/turtlebot_plugin_ws/build" \
    "/usr/bin/python" \
    "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/utilities/message_filters/setup.py" \
    build --build-base "/home/turtlebot/turtlebot_plugin_ws/build/ros_comm/utilities/message_filters" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/turtlebot/turtlebot_plugin_ws/install" --install-scripts="/home/turtlebot/turtlebot_plugin_ws/install/bin"
