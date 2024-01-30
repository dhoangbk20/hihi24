#!/usr/bin/env python
import rospy
import math
import roslaunch
import time
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Point
from std_msgs.msg import Float64

"""
[nav_msgs/Odometry]
std_msgs/Header header
  uint32 seq
  time stamp
  string frame_id
string child_frame_id
geometry_msgs/PoseWithCovariance pose
  geometry_msgs/Pose pose
    geometry_msgs/Point position
      float64 x
      float64 y
      float64 z
    geometry_msgs/Quaternion orientation
      float64 x
      float64 y
      float64 z
      float64 w
  float64[36] covariance
geometry_msgs/TwistWithCovariance twist
  geometry_msgs/Twist twist
    geometry_msgs/Vector3 linear
      float64 x
      float64 y
      float64 z
    geometry_msgs/Vector3 angular
      float64 x
      float64 y
      float64 z
  float64[36] covariance
"""

class SummitMovementDetector(object):
    def __init__(self):
        self._summit_mved_distance = Float64()
        self._summit_mved_distance.data = 0.0
        self.get_init_position()
        
        self.distance_moved_pub = rospy.Publisher('/summit_moved_distance', Float64, queue_size=1)
        rospy.Subscriber("/summit_xl/odom", Odometry, self.odom_callback)

    def get_init_position(self):
        data_odom = None
        while data_odom is None:
            try:                
                data_odom = rospy.wait_for_message("/summit_xl/odom", Odometry, timeout=1)
            except:
                rospy.loginfo("Current summit odom not ready yet, retrying for setting up init pose")
        
        self._current_position = Point()
        self._current_position.x = data_odom.pose.pose.position.x
        self._current_position.y = data_odom.pose.pose.position.y
        self._current_position.z = data_odom.pose.pose.position.z

    def odom_callback(self,msg):
        NewPosition = msg.pose.pose.position
        self._summit_mved_distance.data += self.calculate_distance(NewPosition, self._current_position)
        self.updatecurrent_positin(NewPosition)
        if self._summit_mved_distance.data < 0.000001:
            aux = Float64()
            aux.data = 0.0
            self.distance_moved_pub.publish(aux)
        else:
            self.distance_moved_pub.publish(self._summit_mved_distance)
        
    def updatecurrent_positin(self, new_position):
        self._current_position.x = new_position.x
        self._current_position.y = new_position.y
        self._current_position.z = new_position.z
    
    def calculate_distance(self, new_position, old_position):
        x2 = new_position.x
        x1 = old_position.x
        y2 = new_position.y
        y1 = old_position.y
        dist = math.hypot(x2 - x1, y2 - y1)
        return dist
        
    def wait_until_summit_moved_distance(self, distance):
        """
        It will write in a file the distance moved by Summit from the moment of
        starting this class
        """
        rate = rospy.Rate(5)
        while self._summit_mved_distance.data < distance:
            rate.sleep()
        rospy.loginfo("Summit has moved disatance="+str(self._summit_mved_distance.data))
        
    def publish_moved_distance(self):
        """
        Loops untils closed, publishing moved distance
        """
        rospy.spin()
    
        
    
        # spin() simply keeps python from exiting until this node is stopped
        rospy.spin()

if __name__ == '__main__':
    rospy.init_node('summit_movement_detector_node', anonymous=True)
    summit_movement_obj = SummitMovementDetector()
    distance = 5.0
    
    uuid = roslaunch.rlutil.get_or_generate_uuid(None, False)
    roslaunch.configure_logging(uuid)
    launch = roslaunch.parent.ROSLaunchParent(uuid, ["/home/user/catkin_ws/src/my_summit_mapping/launch/save_map.launch"])
    
    rate = rospy.Rate(5)
    while not rospy.is_shutdown():
      summit_movement_obj.wait_until_summit_moved_distance(distance)
      distance = distance + 5
      launch.start()
      time.sleep(10)
      launch.shutdown()
      rate.sleep()