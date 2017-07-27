# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "test_rosmaster: 16 messages, 3 services")

set(MSG_I_FLAGS "-Itest_rosmaster:/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(test_rosmaster_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgA.msg" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgA.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgB.msg" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgB.msg" "test_rosmaster/Empty"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Floats.msg" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Floats.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestPrimitives.msg" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestPrimitives.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Arrays.msg" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Arrays.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Embed.msg" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Embed.msg" "test_rosmaster/Simple:test_rosmaster/Arrays"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Simple.msg" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Simple.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeB.msg" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeB.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeA.msg" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeA.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestHeader.msg" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestHeader.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/String.msg" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/String.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestArrays.msg" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestArrays.msg" "test_rosmaster/TestString"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/RossrvB.srv" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/RossrvB.srv" "test_rosmaster/Empty"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgC.msg" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgC.msg" "test_rosmaster/String"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/RossrvA.srv" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/RossrvA.srv" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestString.msg" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestString.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Composite.msg" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Composite.msg" "test_rosmaster/CompositeB:test_rosmaster/CompositeA"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TVals.msg" NAME_WE)
add_custom_target(_test_rosmaster_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosmaster" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TVals.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgB.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Floats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Simple.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Arrays.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Embed.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Simple.msg;/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Arrays.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestArrays.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestString.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgC.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestPrimitives.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/String.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Composite.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeB.msg;/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TVals.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)

### Generating Services
_generate_srv_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_srv_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/RossrvB.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)
_generate_srv_cpp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/RossrvA.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
)

### Generating Module File
_generate_module_cpp(test_rosmaster
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(test_rosmaster_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(test_rosmaster_generate_messages test_rosmaster_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgA.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgB.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Floats.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestPrimitives.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Arrays.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Embed.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Simple.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeB.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeA.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestHeader.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/String.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestArrays.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/RossrvB.srv" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgC.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/RossrvA.srv" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestString.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Composite.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TVals.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_cpp _test_rosmaster_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test_rosmaster_gencpp)
add_dependencies(test_rosmaster_gencpp test_rosmaster_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test_rosmaster_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgB.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Floats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Simple.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Arrays.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Embed.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Simple.msg;/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Arrays.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestArrays.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestString.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgC.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestPrimitives.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/String.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Composite.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeB.msg;/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_msg_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TVals.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)

### Generating Services
_generate_srv_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_srv_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/RossrvB.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)
_generate_srv_lisp(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/RossrvA.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
)

### Generating Module File
_generate_module_lisp(test_rosmaster
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(test_rosmaster_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(test_rosmaster_generate_messages test_rosmaster_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgA.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgB.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Floats.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestPrimitives.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Arrays.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Embed.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Simple.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeB.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeA.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestHeader.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/String.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestArrays.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/RossrvB.srv" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgC.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/RossrvA.srv" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestString.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Composite.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TVals.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_lisp _test_rosmaster_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test_rosmaster_genlisp)
add_dependencies(test_rosmaster_genlisp test_rosmaster_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test_rosmaster_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_msg_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgB.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_msg_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Floats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_msg_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Simple.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_msg_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_msg_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Arrays.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_msg_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_msg_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_msg_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Embed.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Simple.msg;/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Arrays.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_msg_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_msg_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestArrays.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestString.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_msg_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgC.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_msg_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestPrimitives.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_msg_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/String.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_msg_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Composite.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeB.msg;/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_msg_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TVals.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)

### Generating Services
_generate_srv_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_srv_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/RossrvB.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)
_generate_srv_py(test_rosmaster
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/RossrvA.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
)

### Generating Module File
_generate_module_py(test_rosmaster
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(test_rosmaster_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(test_rosmaster_generate_messages test_rosmaster_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgA.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgB.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Floats.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestPrimitives.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Arrays.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Embed.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Simple.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeB.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/CompositeA.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestHeader.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/String.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestArrays.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/RossrvB.srv" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/RosmsgC.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/srv/RossrvA.srv" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TestString.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/Composite.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rosmaster/msg/TVals.msg" NAME_WE)
add_dependencies(test_rosmaster_generate_messages_py _test_rosmaster_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test_rosmaster_genpy)
add_dependencies(test_rosmaster_genpy test_rosmaster_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test_rosmaster_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosmaster
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(test_rosmaster_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosmaster
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(test_rosmaster_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosmaster
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(test_rosmaster_generate_messages_py std_msgs_generate_messages_py)
