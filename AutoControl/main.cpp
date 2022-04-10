#include <iostream>
#include "lateral_control.h"
using namespace std;
using Matrix = Eigen::MatrixXd;

int main() {
    LateralControl lat_controller;
    lat_controller.InitialCarParameters();

    // real time states: [x,y,theta; vx,vy,v_theta; ax,ay,a_theta]
    // 车辆当前的状态:[x坐标,y坐标, 航向角， x方向速度， y方向速度， 航向角速度，x方向加速度， y方向加速度， 航向角加速度]
    // 因此是一个 3 × 3 的矩阵
    Matrix car_states;
    car_states = Matrix::Zero(3, 3);

    // a 4*N matrix, planning points [x_i, y_i, theta_i, k_i]
    // 规划的N个离散轨迹点，每个点包含四个参数[该点x坐标，该点y坐标，该点切向角度，该点的曲率]，因此是一个 4 × N 的矩阵
    // N的大小还没确定，N越大，计算时间越长，但可能更准；
    Matrix trajectory_points;
    trajectory_points = Matrix::Zero(4, 50);

    while(true) {
        //================ task1 ===============================================
        // TODO: get the planning information (car_states and trajectory_points)

        //======================================================================

        lat_controller.ComputeMatrixAB(car_states(1,0));
        lat_controller.LqrSolver();
//        lat_controller.LqrTable(car_states(1,0));
        lat_controller.ComputeErr(car_states, trajectory_points);
        lat_controller.ComputeFeedForward(car_states(1,0));
        lat_controller.FinalControl(car_states(1,0));

        // Final output is lat_controller.steer_angle_;
        //================= task2 =========================
        // TODO: send the steer_angle_ to control the car

        //=================================================

    }

    return 0;
}
