cmake_minimum_required(VERSION 3.20)
project(AutoControl)

find_package(Eigen3 REQUIRED)
set(Eigen3_INCLUDE_DIRS ${EIGEN3_INCLUDE_DIR})

include_directories(
        include
        SYSTEM
        third_party
        ${Eigen3_INCLUDE_DIRS}
)

set(CMAKE_CXX_STANDARD 14)

add_executable(AutoControl main.cpp lateral_control.cpp lateral_control.h
               linear_quadratic_regulator.h linear_quadratic_regulator.cpp)

target_include_directories(${PROJECT_NAME} PRIVATE "/usr/include/python3.8")
target_link_libraries(${PROJECT_NAME} python3.8)
