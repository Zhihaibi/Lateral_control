/*
 * @author: Oym & Bzh
 * @Last edit: 2022.04.23
 */

#include <ros/ros.h>
#include <common_msgs/Lanes.h>
#include <common_msgs/Lane.h>
#include <std_msgs/Header.h>
#include <common_msgs/Vehicle_Feedback.h>
#include <common_msgs/Vehicle_Control.h>
#include <cmath>
#include <iostream>
#include "lateral_control.h"
using namespace std;
using Matrix = Eigen::MatrixXd;

//real-time information
// lane_1
float id1_c_0 = -999;
float id1_c_1 = -999;
float id1_c_2 = -999;
float id1_c_3 = -999;
// lane_2
float id2_c_0 = -999;
float id2_c_1 = -999;
float id2_c_2 = -999;
float id2_c_3 = -999;

double pre_Yaw = -1;

// real time states: 3*3 matrix [x,y,theta; vx,vy,v_theta; ax,ay,a_theta];
Matrix car_states = Matrix::Zero(3, 3);
// a 4*1 matrix, planning points [x_i, y_i, theta_i, k_i]
Matrix trajectory_points = Matrix::Zero(4, 1);


//update lanes info
void updateLaneCallback(const common_msgs::Lanes::ConstPtr &msg)
{
    for(common_msgs::Lane lane: msg->lanes){
        int id = lane.lane_idx;
        if(id == 1){
            id1_c_0 = lane.c_0;
            id1_c_1 = lane.c_1;
            id1_c_2 = lane.c_2;
            id1_c_3 = lane.c_3;
        }
        if(id == 2){
            id2_c_0 = lane.c_0;
            id2_c_1 = lane.c_1;
            id2_c_2 = lane.c_2;
            id2_c_3 = lane.c_3;
        }
    }
}


void updateVehicleCallback(const common_msgs::Vehicle_Feedback::ConstPtr &msg)
{
    car_states(0,0) = msg->V_VehPosX;
    car_states(0,1) = msg->V_VehPosY;
    car_states(0,2) = msg->V_VehPosYaw;
    car_states(1,0) = msg->V_VehSpdX;
    car_states(1,1) = msg->V_VehSpdY;
    if(pre_Yaw != -1)
        car_states(1,2) = (msg->V_VehPosYaw - pre_Yaw)*20;
    pre_Yaw = msg->V_VehPosYaw;
}


void ComputeTargetPoint(){
    double V_VehPosX = car_states(0,0);
    double V_VehPosY = car_states(0,1);
    double V_VehPosYaw =car_states(0,2);

    double ahead_x = 1.0; // suppose x is 1m ahead, adjustable here later
    double y_1 = id1_c_0 + id1_c_1 * ahead_x + 1/2 * id1_c_2 * pow(ahead_x,2) + 1/6 * id1_c_3 * pow(ahead_x,3);
    double y_2 = id2_c_0 + id2_c_1 * ahead_x + 1/2 * id2_c_2 * pow(ahead_x,2) + 1/6 * id2_c_3 * pow(ahead_x,3);
    double y_middle = 1/2 * (y_1 + y_2);
    double z = sqrt(ahead_x * ahead_x + y_middle * y_middle);
    double theta = atan(y_middle/ahead_x);
    double target_theta = V_VehPosYaw - theta;   // global

    trajectory_points(0) = V_VehPosX + z * cos(target_theta);
    trajectory_points(1) = V_VehPosY + z * sin(target_theta);
    trajectory_points(2) = target_theta;
    trajectory_points(3) = 1/2 * (id1_c_2 + id2_c_2);
}


int main(int argc, char **argv)
{
    ros::init(argc, argv, "lat_control"); //初始化订阅者节点
    ros::NodeHandle nh_lane_detection;
    ros::NodeHandle nh_vehicle_feedback;
    ros::NodeHandle nh_vehicle_control;

    ros::Subscriber sub_lane_detection =
            nh_lane_detection.subscribe<common_msgs::Lanes>("LaneDetection", 1, updateLaneCallback);
    ros::Subscriber sub_vehicle_feedback =
            nh_vehicle_feedback.subscribe<common_msgs::Vehicle_Feedback>("VehicleFeedbackInfo", 1, updateVehicleCallback);
    ros::Publisher steer_pub =
            nh_vehicle_control.advertise<common_msgs::Vehicle_Control>("VehicleControlInfo", 1);

    ros::Rate loop_rate(20);

    LateralControl lat_controller;
    lat_controller.LqrTableInitial();

    while (ros::ok()){
        ros::spinOnce();
        loop_rate.sleep();

        //wait for update at least once
        if(id1_c_0 == -999) continue;

        // STEP 1: Calculate target point
        ComputeTargetPoint();

        // STEP 2: Lateral Control
//        lat_controller.ComputeMatrixAB(car_states(1,0));  // online lqr
//        lat_controller.LqrSolver();  // online lqr
        lat_controller.LqrLookUpTable(car_states(1,0)); // offline lqr table
        lat_controller.ComputeErr(car_states, trajectory_points);
        lat_controller.ComputeFeedForward(car_states(1,0));
        lat_controller.FinalControl(car_states(1,0));

        // STEP 3: Publish Control message
        common_msgs::Vehicle_Control control_msg;
        control_msg.SteeringAngle = lat_controller.steer_angle_;
        control_msg.ThrottlePedal = 0.5;
        control_msg.Gear = 1;
        control_msg.BrakePedal = 0;

        steer_pub.publish(control_msg);
//        ROS_INFO("target result: %f",control_msg.SteeringAngle );
    }
    return 0;
}