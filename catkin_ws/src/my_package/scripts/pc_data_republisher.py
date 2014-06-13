#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from my_package.srv import *

def republish_pointcloud(pc):
    data = str(pc)
    msg = String()
    data = data[(data.index('[')):(data.index(']')+1)]
    return RepublishPointcloudResponse(data)

def republish_pointcloud_server():
    rospy.init_node("pointcloud_republisher_server")
    s = rospy.service('republish_pointcloud',RepublishPointcloud, republish_pointcloud)
    rospy.spin()

if __name__ == "__main__":
  republish_pointcloud_server()
