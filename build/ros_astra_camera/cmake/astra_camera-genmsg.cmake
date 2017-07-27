# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "astra_camera: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(astra_camera_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_astra_camera/srv/GetSerial.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/turtlebot/turtlebot_plugin_ws/src/ros_astra_camera/srv/GetSerial.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(astra_camera
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_astra_camera/srv/GetSerial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)

### Generating Module File
_generate_module_cpp(astra_camera
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(astra_camera_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(astra_camera_generate_messages astra_camera_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_astra_camera/srv/GetSerial.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astra_camera_gencpp)
add_dependencies(astra_camera_gencpp astra_camera_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astra_camera_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(astra_camera
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_astra_camera/srv/GetSerial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)

### Generating Module File
_generate_module_lisp(astra_camera
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(astra_camera_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(astra_camera_generate_messages astra_camera_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_astra_camera/srv/GetSerial.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astra_camera_genlisp)
add_dependencies(astra_camera_genlisp astra_camera_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astra_camera_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(astra_camera
  "/home/turtlebot/turtlebot_plugin_ws/src/ros_astra_camera/srv/GetSerial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)

### Generating Module File
_generate_module_py(astra_camera
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(astra_camera_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(astra_camera_generate_messages astra_camera_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot_plugin_ws/src/ros_astra_camera/srv/GetSerial.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astra_camera_genpy)
add_dependencies(astra_camera_genpy astra_camera_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astra_camera_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
