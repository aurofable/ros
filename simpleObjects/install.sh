#!/bin/bash

# James Chun, jtchun@andrew.cmu.edu
# Script to configure and install Gazebo
# For Ubuntu 10.04
# Run the script as sudo

# Installing ROS Electric
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu lucid main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-get update
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
sudo apt-get install ros-electric-desktop-full
echo "source /opt/ros/electric/setup.bash" >> ~/.bashrc
. ~/.bashrc

# Installing Gazebo
rosdep install gazebo_worlds
rosmake gazebo_worlds

# Getting the robot car
sudo apt-get install ros-electric-erratic-robot
