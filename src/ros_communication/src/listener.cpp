#include "ros/ros.h"
#include "std_msgs/String.h"

// 接收到订阅的消息后，会进入回调函数
void chatterCallback(const std_msgs::String::ConstPtr& msg){
    // 将结合的消息数据打印出来
    ROS_INFO("I heard: [%s]",msg->data.c_str());
}

int main(int argc,char** argv){
    // 初始化ros节点，节点名称为listener
    ros::init(argc,argv,"listener");

    // 创建listener节点句柄
    ros::NodeHandle n;

    // 创建订阅者subscriber,订阅名为chatter的消息，注册回调函数chatterCallback
    ros::Subscriber sub = n.subscribe("chatter",1000,chatterCallback);

    // 循环等待回调函数
    ros::spin();

    return 0;
}


