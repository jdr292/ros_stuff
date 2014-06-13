#!/usr/bin/env python
import rospy
from sensor_msgs.msg import PointCloud2
from std_msgs.msg import String
from my_package.msg import PCAndString

pub = rospy.Publisher("pc_data",PCAndString,queue_size=10)

def init():
    rospy.init_node("pc_data_republisher")

def callback(pointcloud):
    msg = PCAndString()
    msg.pointcloud = pointcloud
    data = str(pointcloud)
    msg.data = data[(data.index('[')):(data.index(']')+1)]
    pub.publish(msg)

def listener():
    rospy.Subscriber("/cloud_pcd",PointCloud2,callback)
    rospy.spin()

if __name__ == "__main__":
  init()
  listener()
