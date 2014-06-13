FILE(REMOVE_RECURSE
  "CMakeFiles/my_package_generate_messages_py"
  "/misc/projects/reichler/catkin_ws/devel/lib/python2.7/dist-packages/my_package/msg/_PCAndString.py"
  "/misc/projects/reichler/catkin_ws/devel/lib/python2.7/dist-packages/my_package/srv/_RepublishPointcloud.py"
  "/misc/projects/reichler/catkin_ws/devel/lib/python2.7/dist-packages/my_package/msg/__init__.py"
  "/misc/projects/reichler/catkin_ws/devel/lib/python2.7/dist-packages/my_package/srv/__init__.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/my_package_generate_messages_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
