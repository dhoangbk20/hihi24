# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(FATAL_ERROR "Could not find messages which '/home/khoa/catkin_ws/src/marti_common/swri_roscpp/msg/TestTopicServiceRequest.msg' depends on. Did you forget to specify generate_messages(DEPENDENCIES ...)?
Cannot locate message [ServiceHeader] in package [marti_common_msgs] with paths [['/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg']]")
message(FATAL_ERROR "Could not find messages which '/home/khoa/catkin_ws/src/marti_common/swri_roscpp/msg/TestTopicServiceResponse.msg' depends on. Did you forget to specify generate_messages(DEPENDENCIES ...)?
Cannot locate message [ServiceHeader] in package [marti_common_msgs] with paths [['/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg']]")
message(STATUS "swri_roscpp: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iswri_roscpp:/home/khoa/catkin_ws/src/marti_common/swri_roscpp/msg;-Imarti_common_msgs:/home/khoa/catkin_ws/src/marti_messages/marti_common_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(swri_roscpp_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_cpp(swri_roscpp
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swri_roscpp
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(swri_roscpp_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(swri_roscpp_generate_messages swri_roscpp_generate_messages_cpp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(swri_roscpp_gencpp)
add_dependencies(swri_roscpp_gencpp swri_roscpp_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swri_roscpp_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_eus(swri_roscpp
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swri_roscpp
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(swri_roscpp_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(swri_roscpp_generate_messages swri_roscpp_generate_messages_eus)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(swri_roscpp_geneus)
add_dependencies(swri_roscpp_geneus swri_roscpp_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swri_roscpp_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_lisp(swri_roscpp
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swri_roscpp
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(swri_roscpp_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(swri_roscpp_generate_messages swri_roscpp_generate_messages_lisp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(swri_roscpp_genlisp)
add_dependencies(swri_roscpp_genlisp swri_roscpp_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swri_roscpp_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_nodejs(swri_roscpp
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swri_roscpp
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(swri_roscpp_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(swri_roscpp_generate_messages swri_roscpp_generate_messages_nodejs)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(swri_roscpp_gennodejs)
add_dependencies(swri_roscpp_gennodejs swri_roscpp_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swri_roscpp_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_py(swri_roscpp
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swri_roscpp
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(swri_roscpp_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(swri_roscpp_generate_messages swri_roscpp_generate_messages_py)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(swri_roscpp_genpy)
add_dependencies(swri_roscpp_genpy swri_roscpp_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swri_roscpp_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swri_roscpp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swri_roscpp
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET marti_common_msgs_generate_messages_cpp)
  add_dependencies(swri_roscpp_generate_messages_cpp marti_common_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swri_roscpp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swri_roscpp
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET marti_common_msgs_generate_messages_eus)
  add_dependencies(swri_roscpp_generate_messages_eus marti_common_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swri_roscpp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swri_roscpp
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET marti_common_msgs_generate_messages_lisp)
  add_dependencies(swri_roscpp_generate_messages_lisp marti_common_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swri_roscpp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swri_roscpp
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET marti_common_msgs_generate_messages_nodejs)
  add_dependencies(swri_roscpp_generate_messages_nodejs marti_common_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swri_roscpp)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swri_roscpp\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swri_roscpp
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET marti_common_msgs_generate_messages_py)
  add_dependencies(swri_roscpp_generate_messages_py marti_common_msgs_generate_messages_py)
endif()
