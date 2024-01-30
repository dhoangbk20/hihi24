#!/usr/bin/env python

import math
from math import sin, cos, pi

import rospy
import tf
from nav_msgs.msg import Odometry
from std_msgs.msg import Float32
from geometry_msgs.msg import Point, Pose, Quaternion, Twist, Vector3
import matplotlib.pyplot as plt

class Odom:
    def __init__(self):
	self.fig = plt.figure()
	self.ax = self.fig.add_subplot(111)
	self.ax.grid()
	self.fig.show()

	self.fig1 = plt.figure()
	self.ax1 = self.fig1.add_subplot(111)
	self.ax1.grid()
	self.ax1.set_ylim([-180, 180])
	self.fig1.show()

	self.fig2 = plt.figure()
	self.ax2 = self.fig2.add_subplot(111)
	self.ax2.grid()
	#self.ax1.set_ylim([-180, 180])
	self.fig2.show()

	rospy.init_node('plot')
	
	self.enc_L_list = []
	self.enc_R_list = []	
	self.yaw_list = []
	self.x_list = []
	self.y_list = []	
	
        self.x = 0.0
        self.y = 0.0
        self.th = 0.0

        self.enc_L = 0
        self.enc_R = 0
        self.vth = 0

	self.setpoint_L = 0
	self.setpoint_R = 0

        rospy.Subscriber('encoders', Twist, self.vel_callback)
        # rospy.Subscriber('quat_pub', Quaternion, self.quat_callback)
        rospy.Subscriber('theta_pub', Float32, self.yaw_callback)
	rospy.Subscriber('Ozawa', Float32, self.setpoint_callback)
	rospy.Subscriber('odom', Odometry, self.odom_callback)

    def spin(self):
        r = rospy.Rate(10.)
        while not rospy.is_shutdown():
            #self.pubAndBroadcast()
	    self.enc_L_list.append(self.enc_L)
	    self.enc_R_list.append(self.enc_R)
	    self.x_list.append(self.x)
	    self.y_list.append(self.y)
	    self.yaw_list.append(self.th*180/pi)

	    print(self.x, self.y)

	    #print(self.enc_L, self.enc_R)
	    self.ax.plot(list(range(len(self.enc_L_list))), self.enc_L_list, color='b', label='Encoder_L', picker=True)
	    self.ax.plot(list(range(len(self.enc_R_list))), self.enc_R_list, color='r', label='Encoder_R', picker=True)
	    #self.ax.plot(list(range(len(self.enc_L_list))), [self.setpoint_L]*len(self.enc_L_list), color='b', label='Setpoint_L', picker=True)
	    #self.ax.plot(list(range(len(self.enc_R_list))), [self.setpoint_R]*len(self.enc_R_list), color='r', label='Setpoint_R', picker=True)
	    self.ax.set_xlabel("Samples")
	    self.ax.set_ylabel("RPM")
	    self.ax.legend()
            self.fig.canvas.draw()
	    self.fig.canvas.flush_events()

	    #self.enc_L_list.append(self.enc_L)
	    #print(self.enc_L, self.enc_R)
	    #self.ax1.plot(list(range(len(self.enc_L_list))), self.enc_L_list, color='b', label='Distance', picker=True)
	    self.ax1.plot(list(range(len(self.yaw_list))), self.yaw_list, color='r', label='Yaw', picker=True)
	    self.ax1.set_xlabel("Samples")
	    self.ax1.set_ylabel("Radian")
	    self.ax1.legend()
            self.fig1.canvas.draw()
	    self.fig1.canvas.flush_events()
            #r.sleep()

	    #self.ax2.plot([0], [0], 'go', color = 'r', label='Start point')
	    self.ax2.plot(self.x_list[1:], self.y_list[1:], 'go', label='odometry')
	    #self.ax2.plot((0, 0), (self.x_list[-1], self.y_list[-1]))
	    self.ax2.set_xlabel("x")
	    self.ax2.set_ylabel("y")
	    #self.ax2.set_xlim(-10, 10)
	    #self.ax2.set_ylim(-10, 10)
	    #self.ax1.legend()
	    self.ax2.set_aspect('equal', 'datalim')
            self.fig2.canvas.draw()
	    self.fig2.canvas.flush_events()

        self.last_time = current_time

    def setpoint_callback(self,setpoint):
        self.setpoint_L = setpoint.linear.x
        self.setpoint_R = setpoint.linear.y

    def vel_callback(self,encoder):
        self.enc_L = encoder.linear.x
        self.enc_R = encoder.linear.y

    def odom_callback(self,odom):
        self.x = round(odom.pose.pose.position.x, 2)
        self.y = round(odom.pose.pose.position.y, 2)
    


    def yaw_callback(self,_yaw):
        self.th = _yaw.data
        
if __name__ == '__main__':
    odom_object = Odom()
    odom_object.spin()

