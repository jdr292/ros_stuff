#!/usr/bin/env python

import rospy
from visualization_msgs.msg import Marker

def marker_maker():
    pub = rospy.Publisher("markers",Marker,queue_size=10)
    rospy.init_node("marker_maker")
    r = rospy.Rate(1000000)
    q = 0
    i = 1
    j = 0
    while not rospy.is_shutdown():
      msg = Marker()
      msg.ns = "markers"
      msg.type=Marker.SPHERE
      msg.id=q
      msg.action = 0
      msg.color.r = 255
      msg.color.a = 255
      msg.pose.position.x = j
      msg.pose.position.y = j
      msg.pose.position.z = j
      msg.pose.orientation.x = 0
      msg.pose.orientation.y = 0
      msg.pose.orientation.z = 0
      msg.pose.orientation.w = 1
      msg.scale.x = 1
      msg.scale.y = 1
      msg.scale.z = 1
      msg.lifetime = rospy.Duration()
      msg.header.frame_id = "my_frame"
      msg.header.stamp = rospy.Time.now()
      pub.publish(msg)
      q += 1
      i /= 1.1
      j += 1
      r.sleep()

if __name__ == "__main__":
  try:
    marker_maker()
  except rospy.ROSInterruptException: pass
