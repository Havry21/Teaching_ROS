 #include "ros/ros.h"
 #include "std_msgs/Float32.h"

void chatterCallback(const std_msgs::Float32& msg){
  if((long int)msg.data % 2) ROS_INFO("odd");
  else                       ROS_INFO("even");
}

int main(int argc, char** argv){
  ros::init(argc, argv, "listener");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("chatter", 10, chatterCallback);

  ros::spin();
}