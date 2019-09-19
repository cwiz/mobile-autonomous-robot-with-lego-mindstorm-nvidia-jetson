# Mobile Autonomous Robot with LEGO Mindstorm and NVIDIA Jetson Nano on ROS Pplatform

## Project Description

This project explores modern mobile autonomous robotics prototyping. Robotic platform is built with LEGO Mindstorm set with EV3 Brick as motor and sensor controller and NVIDIA Jetson Nano as more powerful computer with accelerated neural networks on CUDA. ROS Melodic is being used as software platform.

## Project Goals

* Evaluate current state of the art of mobile autonomous robotics
* Evaluate of NVIDIA Jetson Platform to mobile robotics
* Evaluate of ROS Melodic

## Hardware

* [LEGO Mindstorm EV3 31313 Kit](https://www.amazon.com/LEGO-MINDSTORMS-31313-Educational-Programming/dp/B00CWER3XY)
* [Jetson Nano](https://store.nvidia.com/store;jsessionid=EF8B35BF82FB37AA99EDC042B8E0AF31?Action=DisplayPage&Locale=en_US&SiteID=nvidia&id=QuickBuyCartPage)

## Technical formulation of the problem

### 1. Getting started

First step of this project is to get robot up and running. We would assemble robot platform using LEGO, flash SD cards for EV3 Brick and Jetson Nano. In the end we will be able to control robot using keyboard.

* Flash Jetson Nano [SD Image](https://developer.nvidia.com/jetson-nano-sd-card-image-r322) to 16+ GB MicroSD CARD
* Flash [Yocto Linux](http://hacks4ros.github.io/h4r_ev3_ctrl/) on 8+ SD Card for LEGO EV3 Brick
* Assemble Crawler Robot following [instructions](https://www.lego.com/en-gb/mindstorms/build-a-robot/gripp3r). Stop at page 74.
* Boot EV3. Connect keyboard and login as root (no password). Connect EV3 to Jetson NANO via USB. Type gadget_on to enable USB networking.
* Set up USB Network interface on Jetson Nano using manual networking setting. Set IP to 192.168.10.X
* EV3 brick will be available on 192.168.10.123. Add ```192.168.10.123  ev3dev``` to /etc/hosts.
* Install ROS Melodic on Jetson Nano via aptitude
* Start roscore on Jetson Nano to start ros master.
* Run ```ros_master_set 192.168.10.1``` on EV3 ssh. Then run ```ev3_manager``` to start ros ev3 node
* Copy this repo's src to $HOME/catkin/src
* Run ```cd $HOME/catkin/; catkin_make```
* Run ```roslaunch ./motors.launch ev3_hostname:=ev3dev``` in one tab
* Run ```rosrun teleop_twist_keyboard teleop_twist_keyboard.py``` to start remote controller via keyboard

### 2. Automating processes on start and shutdown

### 3. Modelling robot in Gazeebo

### 4. Adding Intel RealSense depth camera and building map with SLAM

### 5. Robot Perception. Semantic Segmentation and Identifying Objects

### 6. Searching mapped space for cat. Trying to build model robot's behabious using Reinforcement Learning

## Software Architecture

(Describe RoS modules)

### ROS Types

### ROS Topics

## Mathematical Models

(Describe SLAM)

(Describe Neurla Networks)

## Acknowledgements

1. [ROS Robot With Lego EV3 and Docker](https://www.instructables.com/id/ROS-Robot-With-Lego-EV3-and-Docker/) for ev3 control ros module

## Future Work

## References


