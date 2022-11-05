 #include "ros/ros.h"
 #include "my_service/AddInts.h"
 #include "std_msgs/Float32.h"
 
ros::Publisher chatter_pub;

long int getDeterm(const std::vector<long int>& m){
    long int _matrix[3][3];
    for(int i = 0; i < 3; i++)
       for(int j = 0; j < 3; j++){
            _matrix[i][j] = m[j + (i * 3)];
            ROS_INFO("%d",_matrix[i][j]);
       }

    return _matrix[0][0]*_matrix[1][1]*_matrix[2][2] + _matrix[0][1]*_matrix[1][2]*_matrix[2][0] +
           _matrix[0][2]*_matrix[1][0]*_matrix[2][1] - _matrix[0][2]*_matrix[1][1]*_matrix[2][0] - 
           _matrix[0][0]*_matrix[1][2]*_matrix[2][1] - _matrix[0][1]*_matrix[1][0]*_matrix[2][2];
}

bool add(my_service::AddInts::Request& req, my_service::AddInts::Response& res){
    if(req.matrix.size() != 9){
        ROS_INFO("Wrong size");
        return false;
    } 
    else{
        res.determinant = getDeterm(req.matrix);
        std_msgs::Float32 msg;
        ROS_INFO("determinant: %d", res.determinant);
        msg.data = (float)res.determinant;
        chatter_pub.publish(msg);
        return true;
    }
}

int main(int argc, char** argv){
    ros::init(argc, argv, "add_two_ints_server");
    ros::NodeHandle n;
    chatter_pub = n.advertise<std_msgs::Float32>("chatter", 10);
    ros::ServiceServer service = n.advertiseService("add_two_ints", add);
    ROS_INFO("Ready to add two ints");
    ros::spin();
}