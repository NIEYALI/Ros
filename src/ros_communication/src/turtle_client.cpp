#include <ros/ros.h>
#include <turtlesim/Spawn.h>
// 假如catkin build时出现 fatal error: turtlesim/Spawn.h: No such file or directory
// 执行  sudo apt-get install ros-melodic-ros-tutorials

int main(int argc, char** argv)
{
    // 初始化ROS节点
	ros::init(argc, argv, "turtle_spawn");

    // 创建节点句柄
	ros::NodeHandle node;

    // 等待名为/spawn的服务
	ros::service::waitForService("/spawn");

	// 创建add_turtle客户端，数据类型为turtlesim::Spawn，请求名为/spawn的service
	ros::ServiceClient add_turtle = node.serviceClient<turtlesim::Spawn>("/spawn");

    // 客户端turtlesim::Spawn的请求数据
	turtlesim::Spawn srv;
	srv.request.x = 5.0;
	srv.request.y = 4.0;
	srv.request.name = "turtle2";

    // 请求服务调用
	ROS_INFO("Call service to spwan turtle[x:%0.6f, y:%0.6f, name:%s]", 
			 srv.request.x, srv.request.y, srv.request.name.c_str());

	add_turtle.call(srv);

	// 显示服务调用结果
	ROS_INFO("Spwan turtle successfully [name:%s]", srv.response.name.c_str());

	return 0;
};