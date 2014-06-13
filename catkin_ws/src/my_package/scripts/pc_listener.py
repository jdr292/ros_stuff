#!/usr/bin/env python
import rospy
from sensor_msgs.msg import PointCloud2

def callback(data):
    print data.data
    rospy.loginfo(rospy.get_caller_id()+"Yo, I heard %s",data)
    rospy.loginfo(rospy.get_caller_id()+"I also heard %s",data.data)

def listener():
    rospy.init_node("pointcloud_listener")
    rospy.Subscriber("/cloud_pcd",PointCloud2,callback)
    rospy.spin()

if __name__ == "__main__":
  listener()
