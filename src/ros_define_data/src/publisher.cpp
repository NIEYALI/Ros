#include <ros/ros.h>
#include "ros_define_data/grasp.h"

int main(int argc, char **argv)
{
    // ROS节点初始化
    ros::init(argc, argv, "grasp_publisher");

    // 创建节点句柄
    ros::NodeHandle n;

    // 创建一个Publisher，发布名为grasp_info_pub的topic，消息类型为ros_define_data::grasp，队列长度10
    ros::Publisher grasp_info_pub = n.advertise<ros_define_data::grasp>("/grasp_info", 10);

    // 设置循环的频率
    ros::Rate loop_rate(1);

    int count = 0;
    while (ros::ok())
    {
        // 初始化os_define_data::grasp类型的消息
    	ros_define_data::grasp grasp_msg;
		grasp_msg.x = 100;
		grasp_msg.y = 181;
        grasp_msg.z = 0.324;
        grasp_msg.angle = 1.252;
		grasp_msg.width = 3.05;

        // 发布消息
		grasp_info_pub.publish(grasp_msg);

       	ROS_INFO("Publish grasp Info: pos:(%d,%d)  depth:%f  angle:%f  width:%f", 
			 grasp_msg.x, grasp_msg.y, grasp_msg.z, grasp_msg.angle, grasp_msg.width);

        // 按照循环频率延时
        loop_rate.sleep();
    }

    return 0;
}