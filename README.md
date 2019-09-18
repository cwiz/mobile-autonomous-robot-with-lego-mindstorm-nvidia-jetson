# Autonomous Robot with LEGO Mindstorm, NVIDIA Jetson Nano and RoS

## Project Description

This project is practial application of moddern approach to robotics. Crawler robot built on LEGO Mindstorm platform and NVIDIA Jetson Nano single-board computer.

## Project Goals

* Application of state-of-the-art tools for building robotic prototype
* Evaluation of NVIDIA Jetson Platform 
* Evalution of current state of RoS for building mobile robots

## Hardware

* [LEGO Mindstorm EV3 31313 Kit](https://www.amazon.com/LEGO-MINDSTORMS-31313-Educational-Programming/dp/B00CWER3XY) $350 
* [Jetson Nano] (https://store.nvidia.com/store;jsessionid=EF8B35BF82FB37AA99EDC042B8E0AF31?Action=DisplayPage&Locale=en_US&SiteID=nvidia&id=QuickBuyCartPage) $100

## Getting started

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

## Software Architecture

### ROS Types

### ROS Topics

## Mathematical Models

## Acknowledgements

## Future Work

## References


