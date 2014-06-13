# generated from genmsg/cmake/pkg-msg-paths.cmake.em

# message include dirs in installspace
_prepend_path("${my_package_DIR}/.." "msg" my_package_MSG_INCLUDE_DIRS UNIQUE)
set(my_package_MSG_DEPENDENCIES sensor_msgs;std_msgs;visualization_msgs)
