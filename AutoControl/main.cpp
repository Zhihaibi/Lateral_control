#include <iostream>
#include "lateral_control.h"
using namespace std;
using Matrix = Eigen::MatrixXd;

int main() {
    LateralControl lat_controller;
    lat_controller.InitialCarParameters();

    Matrix car_states; // real time states: [x,y,theta; vx,vy,v_theta; ax,ay,a_theta];
    car_states = Matrix::Zero(3, 3);

    Matrix trajectory_points; // a 4*N matrix, planning points [x_i, y_i, theta_i, k_i]
    trajectory_points = Matrix::Zero(4, 10);

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
