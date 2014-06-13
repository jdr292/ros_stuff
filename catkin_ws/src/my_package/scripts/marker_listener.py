#!/usr/bin/env python
import rospy
from visualization_msgs.msg import Marker

def callback(data):
    rospy.loginfo(rospy.get_caller_id()+"Yo, I heard %s",data.colors)

def listener():
    rospy.init_node("marker_listener")
    rospy.Subscriber("markers",Marker,callback)
    rospy.spin()

if __name__ == "__main__":
  listener()
