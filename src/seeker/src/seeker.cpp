#include "ros/ros.h"
#include <std_msgs/String.h>
#include "nav_msgs/Odometry.h"
#include "gazebo_msgs/ModelStates.h"
#include <vector>
#include <string>
#include <geometry_msgs/Vector3.h>

void OdomCallback (const nav_msgs::Odometry::ConstPtr& msg){
	/* Used for testing odom topic information */

	double x = msg->pose.pose.position.x;
	double y = msg->pose.pose.position.y;
	ROS_INFO("x: %f, y: %f", x, y);
}

void ModelStatesCallback(const gazebo_msgs::ModelStates::ConstPtr& msg){
	/*Note:  Need to figure out how to return displacement information*/

	// Displacement data
	geometry_msgs::Vector3 displacement;
	
	double object_x = msg->pose[1].position.x;
	double object_y = msg->pose[1].position.y;
	double object_z = msg->pose[1].position.z;

	double turtlebot_x = msg->pose[2].position.x;
	double turtlebot_y = msg->pose[2].position.y;
	double turtlebot_z = msg->pose[2].position.z;

	displacement.x = object_x - turtlebot_x;
	displacement.y = object_y - turtlebot_y;
	displacement.z = object_z - turtlebot_z;

	//ROS_INFO("Displacement:  x: %f, y: %f, z: %f", displacement.x, displacement.y, displacement.z);

}

void seeker_behavior (const gazebo_msgs::ModelState){
	ROS_INFO("SEEKER!");
}


int main(int argc, char **argv){
	ros::init(argc, argv, "seeker");
	ros::NodeHandle nh;

	//ros::Subscriber sub = nh.subscribe("odom", 10, OdomCallback);
	ros::Subscriber sub = nh.subscribe("/gazebo/model_states", 1, ModelStatesCallback);

	ros::Publisher pub = nh.advertise<geometry_msgs::Vector3>("displacement",1);
	//pub.publish(data);

	// Check for std_srvs/SetBool Service Call (rosservice call /enable"data:true")
	seeker_behavior();
	/*
	if (ros::service::call("enable",req)){
		seeker_behavior();
	}
	*/

	ros::spin();
	return 0;
}
