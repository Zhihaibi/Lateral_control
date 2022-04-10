#ifndef AUTOCONTROL_LATERAL_CONTROL_H
#define AUTOCONTROL_LATERAL_CONTROL_H

#include <iostream>
#include <algorithm>
#include <cmath>
#include <Eigen/Eigen>
#include <vector>

class LateralControl{

private:

protected:
    // 下列参数是车辆的物理参数
    double ts_ = 0.0;  // 控制周期
    double cf_ = 0.0;  // 前轮侧偏刚度，左右轮之和
    double cr_ = 0.0;  // 后轮侧偏刚度，左右轮之和
    double wheelbase_ = 0.0;  // 前后轴轴距
    double mass_ = 0.0;  // 车辆质量
    double lf_ = 0.0;  // 前轴中心到质心距离
    double lr_ = 0.0;  // 后轴中心到质心距离
    double iz_ = 0.0;  // 车辆绕z轴的转动惯量
    double steer_ratio_ = 0.0;  // 方向盘转角和前轮转角之比
    double steer_single_direction_max_degree_ = 0.0;  // 方向盘单边的最大转角
    double max_lat_acc_ = 0.0;  // 最大允许横向加速度

    int preview_t_ = 0.5; // 向前预览的time

    const int basic_state_size_ = 4;
    // 车辆状态方程系数矩阵A x'=Ax+Bu+B1*Psi_des'  Psi_des‘期望的heading角变化率
    Eigen::MatrixXd matrix_a_;
    // 车辆状态方程系数矩阵A的离散形式Ad,就是将A用双线性变换法离散
    Eigen::MatrixXd matrix_ad_;
    //车辆状态方程系数矩阵B  控制量的系数矩阵
    Eigen::MatrixXd matrix_b_;   // 4x1
    // 系数矩阵B的离散形式 Bd
    Eigen::MatrixXd matrix_bd_;  // 4x1
    // 状态反馈矩阵K   u=-kx  LQR求解出最优的K  K=[k0 k1 k2 k3] 1x4
    Eigen::MatrixXd matrix_k_;
    // control authority weighting matrix
    //LQR算法中控制量的权重系数矩阵R  这里只有一个控制量就是前轮转角，所以R 1x1
    Eigen::MatrixXd matrix_r_;
    //LQR算法中状态反馈量的权重系数矩阵Q  这里有4个状态反馈量[e1 e1' e2 e2']^T，所以Q 4x4对角阵，主要就是对角线上是权重系数
    Eigen::MatrixXd matrix_q_;
    //车辆状态矩阵[e1 e1' e2 e2'], e1,e2分别为横向误差，航向误差
    Eigen::MatrixXd matrix_state_;

    //LQR控制算法求解器的参数，最大迭代次数，从控制配置里读
    int lqr_max_iteration_ = 0;
    //LQR控制算法求解器的参数，求解的精度，从控制配置里读
    double lqr_eps_ = 0.0;

    // trajectory parameters
    double ref_curvature_;


public:
    double steer_angle_ = 0.0; // final output

    LateralControl() = default;
    ~LateralControl() = default;

    // Func: load the car parameters
    // TODO:(the car parameters have not load yet)
    void InitialCarParameters();

    // Input: the longitudinal speed(planning job）
    // Func: compute the discrete matrix Ad and Bd
    void ComputeMatrixAB(double vx);

    // Func: solver LQR in real time
    // Output: gain matrix K
    void LqrSolver();

    // Func: given vx, find K directly in the offline table
    // Mind: the same function as LqrSolver, but faster
    // TODO:(reference table is not compute yet)
    void LqrTable(double vx);

    // Func: compute the error[e1,de1,e2,de2] and ref_curvature
    // Input: car real time states: [x,y,theta; vx,vy,v_theta; ax,ay,a_theta];
    //        trajectory_points: a 4*N matrix, planning points [x_i, y_i, theta_i, k_i]
    void ComputeErr(Eigen::MatrixXd  &car_states, Eigen::MatrixXd  &trajectory_points);

    // Input: road curvature and the longitudinal speed
    double ComputeFeedForward(double vx);

    // Output: final steer angle
    void FinalControl(double vx);
};

#endif //AUTOCONTROL_LATERAL_CONTROL_H
