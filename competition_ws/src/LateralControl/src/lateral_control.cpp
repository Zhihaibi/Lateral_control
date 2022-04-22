#include "lateral_control.h"
#include "linear_quadratic_regulator.h"

using namespace std;
using Matrix = Eigen::MatrixXd;


void LateralControl::ComputeMatrixAB(double vx) {
    // check out if the vx = 0;
    if(vx < minimum_speed_)
        vx = minimum_speed_;

    matrix_a_ = Matrix::Zero(basic_state_size_, basic_state_size_);
    matrix_a_(0, 1) = 1.0;
    matrix_a_(1, 1) = -(cf_ + cr_) / (mass_ * vx);
    matrix_a_(1, 2) = (cf_ + cr_) / mass_;
    matrix_a_(1, 3) = (lr_ * cr_ - lf_ * cf_) / (mass_ * vx);
    matrix_a_(2, 3) = 1.0;
    matrix_a_(3, 1) = (lr_ * cr_ - lf_ * cf_) / (iz_ * vx);
    matrix_a_(3, 2) = (lf_ * cf_ - lr_ * cr_) / iz_;
    matrix_a_(3, 3) = -1.0 * (lf_ * lf_ * cf_ + lr_ * lr_ * cr_) / (iz_ * vx);

    Matrix matrix_i = Matrix::Identity(matrix_a_.cols(), matrix_a_.cols()); // 定义了一个单位阵，A阵列数*A阵列数
    matrix_ad_ = (matrix_i - ts_ * 0.5 * matrix_a_).inverse() *   // 计算A矩阵的离散化形式Ad，用双线性变换
                 (matrix_i + ts_ * 0.5 * matrix_a_);

    matrix_b_ = Matrix::Zero(basic_state_size_, 1);
    matrix_b_(1, 0) = cf_ / mass_;
    matrix_b_(3, 0) = lf_ * cf_ / iz_;
    matrix_bd_ = matrix_b_ * ts_;  // Discrete form of B
}


void LateralControl::LqrSolver(){
    matrix_k_ = Matrix::Zero(1, basic_state_size_);
    matrix_r_ = Matrix::Identity(1, 1);

    //Apollo默认matrix_q_为0.05，0.0，1.0，0.0
    matrix_q_ = Matrix::Zero(basic_state_size_, basic_state_size_);
    matrix_q_(0, 0) = 0.05;
    matrix_q_(2, 2) = 1;

    SolveLQRProblem(matrix_ad_, matrix_bd_, matrix_q_,
                    matrix_r_, lqr_eps_, lqr_max_iteration_,
                    &matrix_k_);
}


void LateralControl::LqrTableInitial(){
    matrix_kTable_ = Matrix::Zero(26, basic_state_size_);
    matrix_kTable_ <<
            0.202792,   0.00656934,  1.14665,   0.0211708,    // 5  1
            0.207935,   0.0125267,   1.17136,   0.0399801,    // 10  2
            0.210229,   0.017434 ,   1.20699,   0.0553691,    // 15  3
            0.210701,   0.0213879,   1.24813,   0.0676202,    // 20
            0.210392,   0.0246279,   1.29102,   0.0773839,    // 25
            0.20972 ,   0.0273366,   1.333  ,   0.0852375,    // 30
            0.208893,   0.0296513,   1.37318,   0.0916759,    // 35
            0.207957,   0.0316325,   1.40981,   0.0969554,    // 40
            0.206961,   0.0333582,   1.44358,   0.101396 ,   // 45
            0.206006,   0.0348689,   1.47406,   0.105133 ,   // 50
            0.205139,   0.0362045,   1.50157,   0.108306 ,   // 55
            0.204383,   0.0373954,   1.5264 ,   0.111023 ,   // 60
            0.203442,   0.038454 ,   1.54944,   0.113461 ,   // 65
            0.202556,   0.0394033,   1.57031,   0.115597 ,   // 70
            0.202071,   0.0402794,   1.58892,   0.117391 ,   // 75
            0.20131 ,   0.0410594,   1.60634,   0.119069 ,   // 80
            0.200602,   0.0417697,   1.62229,   0.120569 ,   // 85
            0.200363,   0.0424464,   1.63655,   0.121812 ,   // 90
            0.199756,   0.0430455,   1.65012,   0.123033  ,  // 95
            0.19919 ,   0.0435973,   1.66265,   0.124141  ,  // 100
            0.198662,   0.0441073,   1.67425,   0.12515  ,  // 105
            0.198169,   0.0445801,   1.68503,   0.126073 ,   // 110
            0.197708,   0.0450196,   1.69507,   0.126921 ,   // 115
            0.197277,   0.0454292,   1.70443,   0.127702 ,   // 120
            0.196872,   0.045812 ,   1.71319,   0.128423 ,   // 125
            0.196492,   0.0461704,   1.7214 ,   0.129092;    // 130  26
}


void LateralControl::LqrLookUpTable(double vx){
    int index = round(vx/5) - 1;
    if(index < 0)
        index = 0;
    if(index > 25)
        index = 25;
    matrix_k_  = matrix_kTable_.row(index);
}


void LateralControl::ComputeErr(Matrix  &car_states, Matrix  &target_point)
{
    // car_states = [x,y,theta; vx,vy,v_theta; ax,ay,a_theta];
    double x = car_states(0,0);
    double y = car_states(0,1);
    double theta = car_states(0,2);
    double vx = car_states(1,0);
    double vy = car_states(1,1);
    double v_theta = car_states(1,2);

    /*
    // Look ahead for preview_t_  time to predict
    // TODO:(ax and ay have not use when compute the x_pre and y_pre)
    double x_pre = x + vx * preview_t_ * cos(theta) - vy * preview_t_ * sin(theta);
    double y_pre = y + vy * preview_t_ * cos(theta) + vx * preview_t_ * sin(theta);
    double theta_pre = theta + v_theta * preview_t_;
    double vx_pre = vx;
    double vy_pre = vy;
    double v_theta_pre = v_theta;

    // Find the nearest planning point [x_i, y_i, theta_i, k_i]
    // TODO:(there might be some efficient ways to find the nearest point)
    double distance = 10000000;
    double min_index = -1;
    for(int i = 0; i < trajectory_points.cols();  i++){
        double temp = pow(trajectory_points(0,i)-x_pre,2) + pow(trajectory_points(1,i)-y_pre,2);
        if(distance > temp){
            distance = temp;
            min_index = i;
        }
    }
    Matrix target_point = trajectory_points.col(min_index);  // 4*1
    */

    // compute the error[e1, de1, e2, de2] and road curvature kr
    double dx = x - target_point(0);
    double dy = y - target_point(1);
    double ed = -dx * sin(target_point(2)) + dy * cos(target_point(2));
    double es = dx * cos(target_point(2)) + dy * sin(target_point(2));
    double theta_r = target_point(2) + target_point(3) * es;
    double d_ed = vy * cos(theta - theta_r) + vx * sin(theta - theta_r);
    double e_phi = theta - theta_r;
    double d_s = (vx * cos(theta - theta_r) - vy * sin(theta - theta_r))
                 /(1-target_point(3) * ed);
    double d_e_phi = v_theta - target_point(3) * d_s;

    // ref_curvature_  and  [e1, de1, e2, de2]
    ref_curvature_ = target_point(3);
    matrix_state_ = Matrix::Zero(basic_state_size_, 1);
    matrix_state_(0) = ed;
    matrix_state_(1) = d_ed;
    matrix_state_(2) = e_phi;
    matrix_state_(3) = d_e_phi;
}


double LateralControl::ComputeFeedForward(double vx){
    const double kv = lr_ * mass_ / 2 / cf_ / wheelbase_ - lf_ * mass_ / 2 / cr_ / wheelbase_;
    // Calculate the feedforward term of the lateral controller; then change it from rad to %
    double steer_angle_feedforward;
    double k3 = matrix_k_(0, 2);

    steer_angle_feedforward = ref_curvature_ *
            (lr_ + lf_ - lr_*k3 - mass_*vx*vx/(lr_ + lf_)*(lr_/cf_ + lf_/cr_*k3 - lf_/cr_));

    steer_angle_feedforward = steer_angle_feedforward * 180 / M_PI * steer_ratio_ ;  // rad to deg

    return steer_angle_feedforward;
}


void LateralControl::FinalControl(double vx){
    // u = -kx
    //将计算出的控制量(车辆的前轮转角)从rad转化为deg,然后再乘上转向传动比steer_ratio_转化成方向盘转角
    const double steer_angle_feedback = -(matrix_k_ * matrix_state_)(0, 0) * 180 / M_PI * steer_ratio_ ;
    const double steer_angle_feedforward = ComputeFeedForward(vx);

    steer_angle_ = steer_angle_feedback + steer_angle_feedforward;    // u = -kx + delta

    // limit the steer angle
//    if(steer_angle_ > steer_single_direction_max_degree_)
//        steer_angle_  =  steer_single_direction_max_degree_;
//    if(steer_angle_ < -steer_single_direction_max_degree_)
//        steer_angle_  =  -steer_single_direction_max_degree_;
}
