#include "ros/ros.h"
#include <cstdlib>
#include <ros_define_data/grasp_.h>

int main(int argc,char** argv){
    // 初始化ros节点
    ros::init(argc,argv,"grasp_client");
    // 从命令行获取两个数
    if(argc != 3){
        ROS_INFO("usage: grasp_client X Y");
        return 1;
    }
    // 创建节点句柄
    ros::NodeHandle n;

    // 创建一个client，请求add_two_ints_server
    // 消息类型为learning_communication::AddTwoInts类型
    // 对应srv文件中的srv文件名
    ros::ServiceClient client = n.serviceClient<ros_define_data::grasp_>("computing_distance");
    
    // 创建learning_communication::AddTwoInts类型的service消息
    ros_define_data::grasp_ srv;
    srv.request.x = atoll(argv[1]);
    srv.request.y = atoll(argv[2]);

    // 发布service消息，等待计算结果反馈回来,call表示发布服务请求了
    if(client.call(srv)){
        ROS_INFO("Distance: %ld",(long int)srv.response.distance);
    }else{
        ROS_ERROR("Failed to call service computing_distance");
        return 1;
    }

    return 0;
}