#include "ros/ros.h"
// 当前include文件夹中为本地地址devel下的include
#include <ros_define_data/grasp_.h>

// server设置回调函数,输入req,输出res
bool addCallback(ros_define_data::grasp_::Request &req,
                 ros_define_data::grasp_::Response &res){
    // 将输入参数中的请求数据相加，结果放到应答回复中
    res.distance = req.x * req.x + req.y * req.y;
    ROS_INFO("request : x = %ld, y = %ld",(long int)req.x,(long int)req.y);
    ROS_INFO("response : distance = %ld",(long int)res.distance);

    return true;
}

int main(int argc,char** argv){
    // ros节点初始化
    ros::init(argc,argv,"computing_distance_server");
    // 创建节点句柄
    ros::NodeHandle n;
    // 创建名为add_two_ints的server,注册回调函数
    ros::ServiceServer service = n.advertiseService("computing_distance",addCallback);

    // 循环等待回调函数
    ROS_INFO("ready to computing distance");
    ros::spin();

    return 0;
}