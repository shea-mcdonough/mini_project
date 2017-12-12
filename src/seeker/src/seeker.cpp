#include "ros/ros.h"
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>
#include <std_srvs/SetBool.h>
#include "nav_msgs/Odometry.h"
#include "gazebo_msgs/ModelStates.h"
#include "gazebo_msgs/ModelState.h"
#include <vector>
#include <string>
#include <geometry_msgs/Vector3.h>

// Global Variable
bool enableService = false;

bool enable(std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &res){
  if (req.data == true){
    enableService = true;
  } else if (req.data == false){
    enableService = false;
  }
  return enableService;
}

class Obstacle {
  public:
    Obstacle(geometry_msgs::Vector3 message) : message(message){}
    geometry_msgs::Vector3 message;
};

class ObstacleMonitor {
  public:
    ObstacleMonitor(const ros::Publisher& pub, const ros::Publisher& pubPosition) : distance_pub(pub), position_pub(pubPosition){
    }
    void ModelStatesCallback(const gazebo_msgs::ModelStates::ConstPtr& msg){
	
      double object_x = msg->pose[1].position.x;
      double object_y = msg->pose[1].position.y;
      double object_z = msg->pose[1].position.z;

      double turtlebot_x = msg->pose[2].position.x;
      double turtlebot_y = msg->pose[2].position.y;
      double turtlebot_z = msg->pose[2].position.z;

      geometry_msgs::Vector3 test = displacementFunction(object_x, object_y, object_z, turtlebot_x, turtlebot_y, turtlebot_z);
      
      // Publish displacement topic information
      distance_pub.publish(test);

      if (enableService == true){
        // Publish new position
        gazebo_msgs::ModelState testP = setPosition(object_x, object_y);
        position_pub.publish(testP);
      }
    }

  private:
    ros::Publisher distance_pub;
    ros::Publisher position_pub;

    geometry_msgs::Vector3 displacementFunction (double object_x, double object_y, double object_z, double turtlebot_x, double turtlebot_y, double turtlebot_z){
      geometry_msgs::Vector3 result;
      result.x = object_x - turtlebot_x;
      result.y = object_y - turtlebot_y;
      result.z = object_z - turtlebot_z;
      return result;
    }

    gazebo_msgs::ModelState setPosition (double x, double y){
      gazebo_msgs::ModelState position;
      position.model_name = "mobile_base";
      position.pose.position.x = x;
      position.pose.position.y = y;
      return position;
    }

};

int main(int argc, char **argv){
  ros::init(argc, argv, "seeker");
  ros::NodeHandle nh;
	
  // Create Publisher
  ros::Publisher pub = nh.advertise<geometry_msgs::Vector3>("displacement", 1);

  ros::Publisher pubPosition = nh.advertise<gazebo_msgs::ModelState>("gazebo/set_model_state", 1);

  // Create Service Server
  ros::ServiceServer service = nh.advertiseService("enable", enable);

  ObstacleMonitor monitor(pub, pubPosition);

  // Create Subscriber
  ros::Subscriber sub = nh.subscribe("/gazebo/model_states", 1, &ObstacleMonitor::ModelStatesCallback, &monitor);

  ROS_INFO("Displacement: ");

  ros::Rate r(1.0);
  
  ros::spin();
  return 0;
}
