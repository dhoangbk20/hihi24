#!/usr/bin/env python

import math
from math import sin, cos, pi

import rospy
import tf
from nav_msgs.msg import Odometry
from std_msgs.msg import Float32
from geometry_msgs.msg import Point, Pose, Quaternion, Twist, Vector3
from sensor_msgs.msg import Imu


class Odom:
    def __init__(self):
        rospy.init_node('odometry_publisher')
        self.odom_pub = rospy.Publisher("odom", Odometry, queue_size=50)
	self.imu_pub = rospy.Publisher("imu/data", Imu, queue_size=50)
        #self.odom_broadcaster = tf.TransformBroadcaster()
        self.x = 0.0
        self.y = 0.0
        self.th = 0.0

        self.vx = 0
	self.vx_pre = 0
	self.ax = 0
        self.vy = 0
        self.vth = 0

	self.angular = 0

        # self.quat = Quaternion()
        
        self.last_time = rospy.Time.now()

        rospy.Subscriber('vel_pub', Twist, self.vel_callback)
        # rospy.Subscriber('quat_pub', Quaternion, self.quat_callback)
        rospy.Subscriber('theta_pub', Float32, self.yaw_callback)
	rospy.Subscriber('angular_z_pub', Float32, self.angular_callback)

	
    def spin(self):
        r = rospy.Rate(10.)
        while not rospy.is_shutdown():
            self.pubAndBroadcast()
            r.sleep()

    def pubAndBroadcast(self):
        current_time = rospy.Time.now()
    # compute odometry in a typical way given the velocities of the robot
        dt = (current_time - self.last_time).to_sec()
        delta_x = (self.vx * cos(self.th) - self.vy * sin(self.th)) * dt
        delta_y = (self.vx * sin(self.th) + self.vy * cos(self.th)) * dt
	ax = (self.vx -self.vx_pre)/dt
	self.vx_pre = self.vx
        # delta_th = self.vth * dt

        self.x += delta_x
        self.y += delta_y
        # self.th += delta_th

        # since all odometry is 6DOF we'll need a quaternion created from yaw
        odom_quat = tf.transformations.quaternion_from_euler(0, 0, self.th)

        # first, we'll publish the transform over tf
        #self.odom_broadcaster.sendTransform(
        #    (self.x, self.y, 0.),
        #    odom_quat,
        #    current_time,
        #    "base_link",
        #    "odom"
        #)

        # next, we'll publish the odometry message over ROS
        odom = Odometry()
	imu = Imu()
        odom.header.stamp = current_time
        odom.header.frame_id = "odom"
	imu.header.stamp = current_time
        imu.header.frame_id = "base_link"
	imu.orientation_covariance = [2.6e-07, 0.0,0.0,0.0, 2.6e-07, 0.0,0.0,0.0,0.0]
	imu.angular_velocity_covariance = [2.5e-05,0.0,0.0,0.0,2.5e-05,0.0,0.0,0.0,2.5e-05]
	imu.linear_acceleration_covariance = [2.5e-05,0.0,0.0,0.0,2.5e-05,0.0,0.0,0.0,2.5e-05]

        # set the position
        odom.pose.pose = Pose(Point(self.x, self.y, 0.), Quaternion(*odom_quat))
	imu.orientation = Quaternion(*odom_quat)

        # set the velocity
        odom.child_frame_id = "base_link"
        odom.twist.twist = Twist(Vector3(self.vx, self.vy, 0), Vector3(0, 0, self.vth))

        imu.angular_velocity = Vector3(0, 0, self.angular)
	imu.linear_acceleration = Vector3(ax, 0, 9.81)
        # publish the message
	for i in range(1):
        	self.odom_pub.publish(odom)
		self.imu_pub.publish(imu)

        self.last_time = current_time

    def vel_callback(self,vel):
        self.vx = vel.linear.x
        self.vth = vel.angular.z
	
    def angular_callback(self,angular):
        self.angular = -angular.data*pi/180
    

    # def quat_callback(self,quat):
    #     self.quat.w = quat.w
    #     self.quat.x = quat.x
    #     self.quat.y = quat.y
    #     self.quat.z = quat.z

    def yaw_callback(self,_yaw):
        self.th = _yaw.data
        
if __name__ == '__main__':
    odom_object = Odom()
    odom_object.spin()

