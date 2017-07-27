# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "test_roslib_comm: 15 messages, 0 services")

set(MSG_I_FLAGS "-Itest_roslib_comm:/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg;-Irosgraph_msgs:/opt/ros/indigo/share/rosgraph_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(test_roslib_comm_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FieldNameChange2.msg" NAME_WE)
add_custom_target(_test_roslib_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_roslib_comm" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FieldNameChange2.msg" "test_roslib_comm/SameSubMsg1"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FieldNameChange1.msg" NAME_WE)
add_custom_target(_test_roslib_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_roslib_comm" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FieldNameChange1.msg" "test_roslib_comm/SameSubMsg1"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg3.msg" NAME_WE)
add_custom_target(_test_roslib_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_roslib_comm" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg3.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FillEmbedTime.msg" NAME_WE)
add_custom_target(_test_roslib_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_roslib_comm" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FillEmbedTime.msg" "std_msgs/String"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/HeaderTest.msg" NAME_WE)
add_custom_target(_test_roslib_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_roslib_comm" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/HeaderTest.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/ArrayOfMsgs.msg" NAME_WE)
add_custom_target(_test_roslib_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_roslib_comm" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/ArrayOfMsgs.msg" "std_msgs/MultiArrayLayout:std_msgs/String:std_msgs/MultiArrayDimension:std_msgs/Time"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FillSimple.msg" NAME_WE)
add_custom_target(_test_roslib_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_roslib_comm" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FillSimple.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeComplex2.msg" NAME_WE)
add_custom_target(_test_roslib_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_roslib_comm" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeComplex2.msg" "test_roslib_comm/SameSubMsg3:test_roslib_comm/SameSubMsg2"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeComplex1.msg" NAME_WE)
add_custom_target(_test_roslib_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_roslib_comm" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeComplex1.msg" "test_roslib_comm/SameSubMsg1:test_roslib_comm/SameSubMsg2"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChange2.msg" NAME_WE)
add_custom_target(_test_roslib_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_roslib_comm" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChange2.msg" "test_roslib_comm/SameSubMsg2"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg" NAME_WE)
add_custom_target(_test_roslib_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_roslib_comm" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg" NAME_WE)
add_custom_target(_test_roslib_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_roslib_comm" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChange1.msg" NAME_WE)
add_custom_target(_test_roslib_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_roslib_comm" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChange1.msg" "test_roslib_comm/SameSubMsg1"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeArray1.msg" NAME_WE)
add_custom_target(_test_roslib_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_roslib_comm" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeArray1.msg" "test_roslib_comm/SameSubMsg1"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeArray2.msg" NAME_WE)
add_custom_target(_test_roslib_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_roslib_comm" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeArray2.msg" "test_roslib_comm/SameSubMsg2"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FieldNameChange2.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_cpp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FieldNameChange1.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_cpp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_cpp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FillEmbedTime.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_cpp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeArray1.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_cpp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/ArrayOfMsgs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_cpp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FillSimple.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_cpp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeComplex2.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg3.msg;/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_cpp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeComplex1.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg;/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_cpp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChange2.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_cpp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_cpp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_cpp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChange1.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_cpp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/HeaderTest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_cpp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeArray2.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
)

### Generating Services

### Generating Module File
_generate_module_cpp(test_roslib_comm
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(test_roslib_comm_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(test_roslib_comm_generate_messages test_roslib_comm_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FieldNameChange2.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_cpp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FieldNameChange1.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_cpp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg3.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_cpp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FillEmbedTime.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_cpp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/HeaderTest.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_cpp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/ArrayOfMsgs.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_cpp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FillSimple.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_cpp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeComplex2.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_cpp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeComplex1.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_cpp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChange2.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_cpp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_cpp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_cpp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChange1.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_cpp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeArray1.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_cpp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeArray2.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_cpp _test_roslib_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test_roslib_comm_gencpp)
add_dependencies(test_roslib_comm_gencpp test_roslib_comm_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test_roslib_comm_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FieldNameChange2.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_lisp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FieldNameChange1.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_lisp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_lisp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FillEmbedTime.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_lisp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeArray1.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_lisp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/ArrayOfMsgs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_lisp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FillSimple.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_lisp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeComplex2.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg3.msg;/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_lisp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeComplex1.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg;/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_lisp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChange2.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_lisp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_lisp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_lisp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChange1.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_lisp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/HeaderTest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_lisp(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeArray2.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
)

### Generating Services

### Generating Module File
_generate_module_lisp(test_roslib_comm
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(test_roslib_comm_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(test_roslib_comm_generate_messages test_roslib_comm_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FieldNameChange2.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_lisp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FieldNameChange1.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_lisp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg3.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_lisp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FillEmbedTime.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_lisp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/HeaderTest.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_lisp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/ArrayOfMsgs.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_lisp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FillSimple.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_lisp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeComplex2.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_lisp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeComplex1.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_lisp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChange2.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_lisp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_lisp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_lisp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChange1.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_lisp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeArray1.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_lisp _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeArray2.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_lisp _test_roslib_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test_roslib_comm_genlisp)
add_dependencies(test_roslib_comm_genlisp test_roslib_comm_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test_roslib_comm_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FieldNameChange2.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_py(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FieldNameChange1.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_py(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_py(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FillEmbedTime.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_py(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeArray1.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_py(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/ArrayOfMsgs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_py(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FillSimple.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_py(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeComplex2.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg3.msg;/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_py(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeComplex1.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg;/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_py(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChange2.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_py(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_py(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_py(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChange1.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_py(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/HeaderTest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
)
_generate_msg_py(test_roslib_comm
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeArray2.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
)

### Generating Services

### Generating Module File
_generate_module_py(test_roslib_comm
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(test_roslib_comm_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(test_roslib_comm_generate_messages test_roslib_comm_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FieldNameChange2.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_py _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FieldNameChange1.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_py _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg3.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_py _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FillEmbedTime.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_py _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/HeaderTest.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_py _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/ArrayOfMsgs.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_py _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/FillSimple.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_py _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeComplex2.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_py _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeComplex1.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_py _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChange2.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_py _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg1.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_py _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/SameSubMsg2.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_py _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChange1.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_py _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeArray1.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_py _test_roslib_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_roslib_comm/msg/TypeNameChangeArray2.msg" NAME_WE)
add_dependencies(test_roslib_comm_generate_messages_py _test_roslib_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test_roslib_comm_genpy)
add_dependencies(test_roslib_comm_genpy test_roslib_comm_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test_roslib_comm_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_roslib_comm
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(test_roslib_comm_generate_messages_cpp rosgraph_msgs_generate_messages_cpp)
add_dependencies(test_roslib_comm_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_roslib_comm
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(test_roslib_comm_generate_messages_lisp rosgraph_msgs_generate_messages_lisp)
add_dependencies(test_roslib_comm_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_roslib_comm
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(test_roslib_comm_generate_messages_py rosgraph_msgs_generate_messages_py)
add_dependencies(test_roslib_comm_generate_messages_py std_msgs_generate_messages_py)
