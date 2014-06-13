# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "my_package: 1 messages, 1 services")

set(MSG_I_FLAGS "-Imy_package:/misc/projects/reichler/catkin_ws/src/my_package/msg;-Isensor_msgs:/opt/ros/hydro/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/hydro/share/visualization_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(my_package_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(my_package
  "/misc/projects/reichler/catkin_ws/src/my_package/msg/PCAndString.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_package
)

### Generating Services
_generate_srv_cpp(my_package
  "/misc/projects/reichler/catkin_ws/src/my_package/srv/RepublishPointcloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_package
)

### Generating Module File
_generate_module_cpp(my_package
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_package
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(my_package_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(my_package_generate_messages my_package_generate_messages_cpp)

# target for backward compatibility
add_custom_target(my_package_gencpp)
add_dependencies(my_package_gencpp my_package_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_package_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(my_package
  "/misc/projects/reichler/catkin_ws/src/my_package/msg/PCAndString.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_package
)

### Generating Services
_generate_srv_lisp(my_package
  "/misc/projects/reichler/catkin_ws/src/my_package/srv/RepublishPointcloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_package
)

### Generating Module File
_generate_module_lisp(my_package
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_package
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(my_package_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(my_package_generate_messages my_package_generate_messages_lisp)

# target for backward compatibility
add_custom_target(my_package_genlisp)
add_dependencies(my_package_genlisp my_package_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_package_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(my_package
  "/misc/projects/reichler/catkin_ws/src/my_package/msg/PCAndString.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_package
)

### Generating Services
_generate_srv_py(my_package
  "/misc/projects/reichler/catkin_ws/src/my_package/srv/RepublishPointcloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_package
)

### Generating Module File
_generate_module_py(my_package
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_package
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(my_package_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(my_package_generate_messages my_package_generate_messages_py)

# target for backward compatibility
add_custom_target(my_package_genpy)
add_dependencies(my_package_genpy my_package_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_package_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_package
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(my_package_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(my_package_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(my_package_generate_messages_cpp visualization_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_package
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(my_package_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(my_package_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(my_package_generate_messages_lisp visualization_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_package)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_package\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_package
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(my_package_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(my_package_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(my_package_generate_messages_py visualization_msgs_generate_messages_py)
