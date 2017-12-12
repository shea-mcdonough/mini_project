#include "ros/ros.h"
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>
#include "nav_msgs/Odometry.h"
#include "gazebo_msgs/ModelStates.h"
#include <vector>
#include <string>
#include <geometry_msgs/Vector3.h>

class Obstacle {
  public:
    Obstacle(geometry_msgs::Vector3 message) : message(message){}
    geometry_msgs::Vector3 message;
};

class ObstacleMonitor {
  public:
    ObstacleMonitor(const ros::Publisher& pub) : distance_pub(pub) {
    }
    void ModelStatesCallback(const gazebo_msgs::ModelStates::ConstPtr& msg){
      /*Note:  Need to figure out how to return displacement information*/
	
      double object_x = msg->pose[1].position.x;
      double object_y = msg->pose[1].position.y;
      double object_z = msg->pose[1].position.z;

      double turtlebot_x = msg->pose[2].position.x;
      double turtlebot_y = msg->pose[2].position.y;
      double turtlebot_z = msg->pose[2].position.z;
	
      geometry_msgs::Vector3 test = displacementFunction(object_x, object_y, object_z, turtlebot_x, turtlebot_y, turtlebot_z);
      //ROS_INFO("displacementFunction: x: %f, y: %f", test.displacementMessage.x, test.displacementMessage.y);
      distance_pub.publish(test);
    }

  private:
    ros::Publisher distance_pub;
    geometry_msgs::Vector3 displacementFunction (double object_x, double object_y, double object_z, double turtlebot_x, double turtlebot_y, double turtlebot_z){
      geometry_msgs::Vector3 result;
      result.x = object_x - turtlebot_x;
      result.y = object_y - turtlebot_y;
      result.z = object_z - turtlebot_z;
      return result;
    }

    void enableFunction (){
      
    }
};

int main(int argc, char **argv){
  ros::init(argc, argv, "seeker");
  ros::NodeHandle nh;
	
  // Create Publisher
  ros::Publisher pub = nh.advertise<geometry_msgs::Vector3>("displacement", 1);
  ObstacleMonitor monitor(pub);

  // Create Subscriber
  ros::Subscriber sub = nh.subscribe("/gazebo/model_states", 1, &ObstacleMonitor::ModelStatesCallback, &monitor);

  ROS_INFO("Displacement: ");

  // Check for std_srvs/SetBool Service Call (rosservice call /enable"data:true"
	
  ros::spin();
  return 0;
}
