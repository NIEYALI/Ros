#include <ros/ros.h>
#include "ros_define_data/grasp.h"

// 接收到订阅的消息后，会进入消息回调函数
void GraspInfoCallback(const ros_define_data::grasp::ConstPtr& msg)
{
    // 将接收到的消息打印出来
    ROS_INFO("Subcribe grasp Info: pos:(%d,%d)  depth:%f  angle:%f  width:%f", 
			 msg->x, msg->y, msg->z, msg->angle, msg->width);
}

int main(int argc, char **argv)
{
    // 初始化ROS节点
    ros::init(argc, argv, "grasp_subscriber");

    // 创建节点句柄
    ros::NodeHandle n;

    // 创建一个Subscriber，订阅名为/grasp_info的topic，注册回调函数GraspInfoCallback
    ros::Subscriber grasp_info_sub = n.subscribe("/grasp_info", 10, GraspInfoCallback);

    // 循环等待回调函数
    ros::spin();

    return 0;
}