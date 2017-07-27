# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "topic_tools: 0 messages, 8 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(topic_tools_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxList.srv" NAME_WE)
add_custom_target(_topic_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "topic_tools" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxList.srv" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxList.srv" NAME_WE)
add_custom_target(_topic_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "topic_tools" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxList.srv" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxDelete.srv" NAME_WE)
add_custom_target(_topic_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "topic_tools" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxDelete.srv" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxAdd.srv" NAME_WE)
add_custom_target(_topic_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "topic_tools" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxAdd.srv" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxDelete.srv" NAME_WE)
add_custom_target(_topic_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "topic_tools" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxDelete.srv" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxSelect.srv" NAME_WE)
add_custom_target(_topic_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "topic_tools" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxSelect.srv" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxSelect.srv" NAME_WE)
add_custom_target(_topic_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "topic_tools" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxSelect.srv" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxAdd.srv" NAME_WE)
add_custom_target(_topic_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "topic_tools" "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxAdd.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/topic_tools
)
_generate_srv_cpp(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/topic_tools
)
_generate_srv_cpp(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxDelete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/topic_tools
)
_generate_srv_cpp(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxAdd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/topic_tools
)
_generate_srv_cpp(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxDelete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/topic_tools
)
_generate_srv_cpp(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxSelect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/topic_tools
)
_generate_srv_cpp(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxSelect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/topic_tools
)
_generate_srv_cpp(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxAdd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/topic_tools
)

### Generating Module File
_generate_module_cpp(topic_tools
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/topic_tools
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(topic_tools_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(topic_tools_generate_messages topic_tools_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxList.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_cpp _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxList.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_cpp _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxDelete.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_cpp _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxAdd.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_cpp _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxDelete.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_cpp _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxSelect.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_cpp _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxSelect.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_cpp _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxAdd.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_cpp _topic_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(topic_tools_gencpp)
add_dependencies(topic_tools_gencpp topic_tools_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS topic_tools_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/topic_tools
)
_generate_srv_lisp(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/topic_tools
)
_generate_srv_lisp(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxDelete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/topic_tools
)
_generate_srv_lisp(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxAdd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/topic_tools
)
_generate_srv_lisp(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxDelete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/topic_tools
)
_generate_srv_lisp(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxSelect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/topic_tools
)
_generate_srv_lisp(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxSelect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/topic_tools
)
_generate_srv_lisp(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxAdd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/topic_tools
)

### Generating Module File
_generate_module_lisp(topic_tools
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/topic_tools
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(topic_tools_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(topic_tools_generate_messages topic_tools_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxList.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_lisp _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxList.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_lisp _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxDelete.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_lisp _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxAdd.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_lisp _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxDelete.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_lisp _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxSelect.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_lisp _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxSelect.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_lisp _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxAdd.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_lisp _topic_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(topic_tools_genlisp)
add_dependencies(topic_tools_genlisp topic_tools_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS topic_tools_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/topic_tools
)
_generate_srv_py(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/topic_tools
)
_generate_srv_py(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxDelete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/topic_tools
)
_generate_srv_py(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxAdd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/topic_tools
)
_generate_srv_py(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxDelete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/topic_tools
)
_generate_srv_py(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxSelect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/topic_tools
)
_generate_srv_py(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxSelect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/topic_tools
)
_generate_srv_py(topic_tools
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxAdd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/topic_tools
)

### Generating Module File
_generate_module_py(topic_tools
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/topic_tools
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(topic_tools_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(topic_tools_generate_messages topic_tools_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxList.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_py _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxList.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_py _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxDelete.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_py _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxAdd.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_py _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxDelete.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_py _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxSelect.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_py _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/MuxSelect.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_py _topic_tools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_comm/tools/topic_tools/srv/DemuxAdd.srv" NAME_WE)
add_dependencies(topic_tools_generate_messages_py _topic_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(topic_tools_genpy)
add_dependencies(topic_tools_genpy topic_tools_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS topic_tools_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/topic_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/topic_tools
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(topic_tools_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/topic_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/topic_tools
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(topic_tools_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/topic_tools)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/topic_tools\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/topic_tools
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/topic_tools
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/topic_tools/.+/__init__.pyc?$"
  )
endif()
add_dependencies(topic_tools_generate_messages_py std_msgs_generate_messages_py)
