#include <sstream>
#include "ros/ros.h"
#include "std_msgs/String.h"

int main(int argc,char** argv){
    // ros节点初始化，定义节点名称为talker
    ros::init(argc,argv, "talker");

    // 创建talker节点的句柄
    ros::NodeHandle n;

    // 创建一个publisher，发布名为chatter的topic，消息类型为std_msgs::String
    ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter",1000);
    ros::Rate loop_rate(10); // 休眠时间0.1s工作下一轮

    int count = 0;
    while(ros::ok()){
        //初始化std_msgs::String类型的消息
        std_msgs::String msg;
        std::stringstream ss;
        ss << "hello world" << count;
        msg.data = ss.str();

        // 发布消息
        ROS_INFO("%s",msg.data.c_str());
        chatter_pub.publish(msg);

        // 循环等待回调函数
        ros::spinOnce();

        // 按照循环频率延时
        loop_rate.sleep();
        ++count;
    }
    return 0;
}