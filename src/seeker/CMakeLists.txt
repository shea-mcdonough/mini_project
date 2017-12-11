cmake_minimum_required(VERSION 2.8.3)
project(seeker)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  sensor_msgs
  std_msgs
  std_srvs
  nav_msgs
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES seeker
  CATKIN_DEPENDS geometry_msgs roscpp sensor_msgs std_msgs std_srvs nav_msgs
#  DEPENDS system_lib
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

add_executable(seeker src/seeker.cpp)
add_dependencies(seeker ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(seeker ${catkin_LIBRARIES})

