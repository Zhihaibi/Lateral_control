#include "lateral_control.h"
#include "linear_quadratic_regulator.h"

using namespace std;
using Matrix = Eigen::MatrixXd;


void LateralControl::InitialCarParameters(){
    int i = 0;
}


void LateralControl::ComputeMatrixAB(double vx) {
    // check out if the vx = 0;
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
    matrix_state_ = Matrix::Zero(basic_state_size_, 1);
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


// TODO:(compute the offline K table according to different vx)
void LateralControl::LqrTable(double vx){
    int i = 0;
}


void LateralControl::ComputeErr(Matrix  &car_states, Matrix  &trajectory_points)
{
    // car_states = [x,y,theta; vx,vy,v_theta; ax,ay,a_theta];
    double x = car_states(0,0);
    double y = car_states(0,1);
    double theta = car_states(0,2);
    double vx = car_states(1,0);
    double vy = car_states(1,1);
    double v_theta = car_states(1,2);

    // Look ahead for preview_t_  time to predict
    // TODO:(ax and ay have not use when compute the x_pre and y_pre)
    double x_pre = x + vx * preview_t_ * cos(theta) - vx * preview_t_ * sin(theta);
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

    // compute the error[e1, de1, e2, de2] and road curvature kr
    double dx = x_pre - target_point(0);
    double dy = y_pre - target_point(1);
    double ed = -dx * sin(target_point(2)) + dy * cos(target_point(2));
    double es = dx * cos(target_point(2)) + dy * sin(target_point(2));
    double theta_r = target_point(2) + target_point(3) * es;
    double d_ed = vy_pre * cos(theta_pre - theta_r) + vx_pre * sin(theta_pre - theta_r);
    double e_phi = theta_pre - theta_r;
    double d_s = (vx_pre * cos(theta_pre - theta_r) - vy_pre * sin(theta_pre - theta_r))
                 /(1-target_point(3) * ed);
    double d_e_phi = v_theta_pre - target_point(3) * d_s;

    // ref_curvature_  and  [e1, de1, e2, de2]
    ref_curvature_ = target_point(3);
    matrix_state_(0) = ed;
    matrix_state_(0) = d_ed;
    matrix_state_(0) = e_phi;
    matrix_state_(0) = d_e_phi;
}


double LateralControl::ComputeFeedForward(double vx){
    const double kv = lr_ * mass_ / 2 / cf_ / wheelbase_ - lf_ * mass_ / 2 / cr_ / wheelbase_;
    // Calculate the feedforward term of the lateral controller; then change it from rad to %
    double steer_angle_feedforward;
    steer_angle_feedforward =
            (wheelbase_ * ref_curvature_ + kv * vx * vx * ref_curvature_ -
             matrix_k_(0, 2) *
             (lr_ * ref_curvature_ - lf_ * mass_ * vx * vx * ref_curvature_ / 2 / cr_ / wheelbase_)) *
            180 / M_PI * steer_ratio_ / steer_single_direction_max_degree_ * 100;

    return steer_angle_feedforward;
}


void LateralControl::FinalControl(double vx){
    // u = -kx
    //将计算出的控制量(车辆的前轮转角)从rad转化为deg,然后再乘上转向传动比steer_ratio_转化成方向盘转角
    //最后再根据单边的方向盘最大转角转化控制为百分数 [-100%, 100%]
    const double steer_angle_feedback = -(matrix_k_ * matrix_state_)(0, 0) * 180 / M_PI
                                        * steer_ratio_ / steer_single_direction_max_degree_ * 100;
    const double steer_angle_feedforward = ComputeFeedForward(vx);
    steer_angle_ = steer_angle_feedback + steer_angle_feedforward;    // u = -kx + delta
}
