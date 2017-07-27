# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roscpp: 1 messages, 3 services")

set(MSG_I_FLAGS "-Iroscpp:/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roscpp_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/Empty.srv" NAME_WE)
add_custom_target(_roscpp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roscpp" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/Empty.srv" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/GetLoggers.srv" NAME_WE)
add_custom_target(_roscpp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roscpp" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/GetLoggers.srv" "roscpp/Logger"
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/SetLoggerLevel.srv" NAME_WE)
add_custom_target(_roscpp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roscpp" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/SetLoggerLevel.srv" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/msg/Logger.msg" NAME_WE)
add_custom_target(_roscpp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roscpp" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/msg/Logger.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roscpp
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/msg/Logger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roscpp
)

### Generating Services
_generate_srv_cpp(roscpp
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/Empty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roscpp
)
_generate_srv_cpp(roscpp
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/GetLoggers.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/msg/Logger.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roscpp
)
_generate_srv_cpp(roscpp
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/SetLoggerLevel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roscpp
)

### Generating Module File
_generate_module_cpp(roscpp
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roscpp
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roscpp_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roscpp_generate_messages roscpp_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/Empty.srv" NAME_WE)
add_dependencies(roscpp_generate_messages_cpp _roscpp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/GetLoggers.srv" NAME_WE)
add_dependencies(roscpp_generate_messages_cpp _roscpp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/SetLoggerLevel.srv" NAME_WE)
add_dependencies(roscpp_generate_messages_cpp _roscpp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/msg/Logger.msg" NAME_WE)
add_dependencies(roscpp_generate_messages_cpp _roscpp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roscpp_gencpp)
add_dependencies(roscpp_gencpp roscpp_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roscpp_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roscpp
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/msg/Logger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roscpp
)

### Generating Services
_generate_srv_lisp(roscpp
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/Empty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roscpp
)
_generate_srv_lisp(roscpp
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/GetLoggers.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/msg/Logger.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roscpp
)
_generate_srv_lisp(roscpp
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/SetLoggerLevel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roscpp
)

### Generating Module File
_generate_module_lisp(roscpp
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roscpp
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roscpp_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roscpp_generate_messages roscpp_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/Empty.srv" NAME_WE)
add_dependencies(roscpp_generate_messages_lisp _roscpp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/GetLoggers.srv" NAME_WE)
add_dependencies(roscpp_generate_messages_lisp _roscpp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/SetLoggerLevel.srv" NAME_WE)
add_dependencies(roscpp_generate_messages_lisp _roscpp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/msg/Logger.msg" NAME_WE)
add_dependencies(roscpp_generate_messages_lisp _roscpp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roscpp_genlisp)
add_dependencies(roscpp_genlisp roscpp_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roscpp_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roscpp
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/msg/Logger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roscpp
)

### Generating Services
_generate_srv_py(roscpp
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/Empty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roscpp
)
_generate_srv_py(roscpp
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/GetLoggers.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/msg/Logger.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roscpp
)
_generate_srv_py(roscpp
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/SetLoggerLevel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roscpp
)

### Generating Module File
_generate_module_py(roscpp
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roscpp
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roscpp_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roscpp_generate_messages roscpp_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/Empty.srv" NAME_WE)
add_dependencies(roscpp_generate_messages_py _roscpp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/GetLoggers.srv" NAME_WE)
add_dependencies(roscpp_generate_messages_py _roscpp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/srv/SetLoggerLevel.srv" NAME_WE)
add_dependencies(roscpp_generate_messages_py _roscpp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/clients/roscpp/msg/Logger.msg" NAME_WE)
add_dependencies(roscpp_generate_messages_py _roscpp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roscpp_genpy)
add_dependencies(roscpp_genpy roscpp_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roscpp_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roscpp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roscpp
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roscpp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roscpp
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roscpp)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roscpp\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roscpp
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
