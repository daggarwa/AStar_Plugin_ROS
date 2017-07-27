# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "test_rostopic: 7 messages, 0 services")

set(MSG_I_FLAGS "-Itest_rostopic:/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(test_rostopic_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Floats.msg" NAME_WE)
add_custom_target(_test_rostopic_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rostopic" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Floats.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Simple.msg" NAME_WE)
add_custom_target(_test_rostopic_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rostopic" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Simple.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Arrays.msg" NAME_WE)
add_custom_target(_test_rostopic_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rostopic" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Arrays.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Val.msg" NAME_WE)
add_custom_target(_test_rostopic_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rostopic" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Val.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/TVals.msg" NAME_WE)
add_custom_target(_test_rostopic_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rostopic" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/TVals.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Embed.msg" NAME_WE)
add_custom_target(_test_rostopic_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rostopic" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Embed.msg" "test_rostopic/Arrays:test_rostopic/Simple"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/ArrayVal.msg" NAME_WE)
add_custom_target(_test_rostopic_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rostopic" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/ArrayVal.msg" "test_rostopic/Val"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Floats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rostopic
)
_generate_msg_cpp(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Simple.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rostopic
)
_generate_msg_cpp(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Val.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rostopic
)
_generate_msg_cpp(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Arrays.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rostopic
)
_generate_msg_cpp(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/TVals.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rostopic
)
_generate_msg_cpp(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Embed.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Arrays.msg;/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Simple.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rostopic
)
_generate_msg_cpp(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/ArrayVal.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Val.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rostopic
)

### Generating Services

### Generating Module File
_generate_module_cpp(test_rostopic
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rostopic
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(test_rostopic_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(test_rostopic_generate_messages test_rostopic_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Floats.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_cpp _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Simple.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_cpp _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Arrays.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_cpp _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Val.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_cpp _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/TVals.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_cpp _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Embed.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_cpp _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/ArrayVal.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_cpp _test_rostopic_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test_rostopic_gencpp)
add_dependencies(test_rostopic_gencpp test_rostopic_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test_rostopic_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Floats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rostopic
)
_generate_msg_lisp(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Simple.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rostopic
)
_generate_msg_lisp(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Val.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rostopic
)
_generate_msg_lisp(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Arrays.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rostopic
)
_generate_msg_lisp(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/TVals.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rostopic
)
_generate_msg_lisp(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Embed.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Arrays.msg;/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Simple.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rostopic
)
_generate_msg_lisp(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/ArrayVal.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Val.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rostopic
)

### Generating Services

### Generating Module File
_generate_module_lisp(test_rostopic
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rostopic
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(test_rostopic_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(test_rostopic_generate_messages test_rostopic_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Floats.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_lisp _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Simple.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_lisp _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Arrays.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_lisp _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Val.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_lisp _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/TVals.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_lisp _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Embed.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_lisp _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/ArrayVal.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_lisp _test_rostopic_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test_rostopic_genlisp)
add_dependencies(test_rostopic_genlisp test_rostopic_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test_rostopic_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Floats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rostopic
)
_generate_msg_py(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Simple.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rostopic
)
_generate_msg_py(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Val.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rostopic
)
_generate_msg_py(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Arrays.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rostopic
)
_generate_msg_py(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/TVals.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rostopic
)
_generate_msg_py(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Embed.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Arrays.msg;/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Simple.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rostopic
)
_generate_msg_py(test_rostopic
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/ArrayVal.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Val.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rostopic
)

### Generating Services

### Generating Module File
_generate_module_py(test_rostopic
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rostopic
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(test_rostopic_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(test_rostopic_generate_messages test_rostopic_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Floats.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_py _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Simple.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_py _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Arrays.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_py _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Val.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_py _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/TVals.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_py _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/Embed.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_py _test_rostopic_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/test/test_rostopic/msg/ArrayVal.msg" NAME_WE)
add_dependencies(test_rostopic_generate_messages_py _test_rostopic_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test_rostopic_genpy)
add_dependencies(test_rostopic_genpy test_rostopic_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test_rostopic_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rostopic)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rostopic
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(test_rostopic_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rostopic)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rostopic
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(test_rostopic_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rostopic)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rostopic\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rostopic
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(test_rostopic_generate_messages_py std_msgs_generate_messages_py)
