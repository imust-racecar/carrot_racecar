#include <ros/ros.h>
#include <geometry_msgs/TwistWithCovarianceStamped.h>

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "run_circle");
    ros::NodeHandle n;

    ros::Publisher pub = n.advertise<geometry_msgs::Twist>("/car/cmd_vel", 1);

    geometry_msgs::Twist twist;
    twist.angular.z = 100;
    twist.linear.x = 1.5;

    while (1) {
        pub.publish(twist);
    }

    return 0;
}