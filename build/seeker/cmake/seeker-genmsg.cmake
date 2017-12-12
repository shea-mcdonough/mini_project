# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "seeker: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iseeker:/home/user/catkin_ws/src/seeker/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(seeker_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/catkin_ws/src/seeker/msg/displacement.msg" NAME_WE)
add_custom_target(_seeker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "seeker" "/home/user/catkin_ws/src/seeker/msg/displacement.msg" "geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(seeker
  "/home/user/catkin_ws/src/seeker/msg/displacement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/seeker
)

### Generating Services

### Generating Module File
_generate_module_cpp(seeker
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/seeker
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(seeker_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(seeker_generate_messages seeker_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/seeker/msg/displacement.msg" NAME_WE)
add_dependencies(seeker_generate_messages_cpp _seeker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(seeker_gencpp)
add_dependencies(seeker_gencpp seeker_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS seeker_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(seeker
  "/home/user/catkin_ws/src/seeker/msg/displacement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/seeker
)

### Generating Services

### Generating Module File
_generate_module_eus(seeker
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/seeker
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(seeker_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(seeker_generate_messages seeker_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/seeker/msg/displacement.msg" NAME_WE)
add_dependencies(seeker_generate_messages_eus _seeker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(seeker_geneus)
add_dependencies(seeker_geneus seeker_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS seeker_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(seeker
  "/home/user/catkin_ws/src/seeker/msg/displacement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/seeker
)

### Generating Services

### Generating Module File
_generate_module_lisp(seeker
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/seeker
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(seeker_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(seeker_generate_messages seeker_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/seeker/msg/displacement.msg" NAME_WE)
add_dependencies(seeker_generate_messages_lisp _seeker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(seeker_genlisp)
add_dependencies(seeker_genlisp seeker_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS seeker_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(seeker
  "/home/user/catkin_ws/src/seeker/msg/displacement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/seeker
)

### Generating Services

### Generating Module File
_generate_module_nodejs(seeker
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/seeker
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(seeker_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(seeker_generate_messages seeker_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/seeker/msg/displacement.msg" NAME_WE)
add_dependencies(seeker_generate_messages_nodejs _seeker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(seeker_gennodejs)
add_dependencies(seeker_gennodejs seeker_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS seeker_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(seeker
  "/home/user/catkin_ws/src/seeker/msg/displacement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/seeker
)

### Generating Services

### Generating Module File
_generate_module_py(seeker
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/seeker
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(seeker_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(seeker_generate_messages seeker_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/seeker/msg/displacement.msg" NAME_WE)
add_dependencies(seeker_generate_messages_py _seeker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(seeker_genpy)
add_dependencies(seeker_genpy seeker_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS seeker_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/seeker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/seeker
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(seeker_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/seeker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/seeker
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(seeker_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/seeker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/seeker
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(seeker_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/seeker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/seeker
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(seeker_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/seeker)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/seeker\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/seeker
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(seeker_generate_messages_py geometry_msgs_generate_messages_py)
endif()
