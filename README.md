# Mobile Autonomous Robot with LEGO Mindstorm and NVIDIA Jetson Nano on ROS Melodic

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

### Getting started

First step of this project is to get robot up and running. We would assemble robot platform using LEGO, flash SD cards for EV3 Brick and Jetson Nano. In the end we will be able to control robot using keyboard.

1. Flash Jetson Nano [SD Image](https://developer.nvidia.com/jetson-nano-sd-card-image-r322) to 16+ GB MicroSD CARD
2. Flash [Yocto Linux](http://hacks4ros.github.io/h4r_ev3_ctrl/) on 8+ SD Card for LEGO EV3 Brick
3. Assemble Crawler Robot following [instructions](https://www.lego.com/en-gb/mindstorms/build-a-robot/gripp3r). Stop at page 74.
4. Boot EV3. Connect keyboard and login as root (no password). Connect EV3 to Jetson NANO via USB. Type gadget_on to enable USB networking.
5. Set up USB Network interface on Jetson Nano using manual networking setting. Set IP to 192.168.10.X
6. EV3 brick will be available on 192.168.10.123. Add ```192.168.10.123  ev3dev``` to /etc/hosts.
7. Install ROS Melodic on Jetson Nano via aptitude
8. Start roscore on Jetson Nano to start ros master.
9. Run ```ros_master_set 192.168.10.1``` on EV3 ssh. Then run ```ev3_manager``` to start ros ev3 node
10. Copy this repo's src to $HOME/catkin/src
11. Run ```cd $HOME/catkin/; catkin_make```
12. Run ```roslaunch ./motors.launch ev3_hostname:=ev3dev``` in one tab
13. Run ```rosrun teleop_twist_keyboard teleop_twist_keyboard.py``` to start remote controller via keyboard

At this point we will be able to control robot with keyboard. 

### Modelling robot in Gazeebo Virtual Environment

Now that we have phisical robot we would like to also have it in digital form. We would need to assemble our robot in [Lego Digital Designer](https://www.lego.com/en-us/ldd) and then convert model to URDF.

## Software Architecture

Robot has 3 joint which are controller through ev3_controller: Joint_A, Joint_B and Joint_C. Joints A and B are [EV3 Large Servo Motor](https://www.lego.com/en-us/product/ev3-large-servo-motor-45502) and joint C is [Medium Servo Motor](https://www.lego.com/en-us/product/ev3-medium-servo-motor-45503)

### ROS Nodes

#### EV3_manager

[Source Code](https://github.com/Hacks4ROS/h4r_ev3_ctrl/tree/develop/h4r_ev3_manager)

EV3_maneger exposes controller ports A, B, C and D as well as sensor ports 1 though 4. Our robot has no senosrs attached to EV3. Ports C and B attached to large seros and port A is attached to medium servo. EV3_manager exposes these servos with [twist](https://docs.ros.org/api/geometry_msgs/html/msg/Twist.html) interface

### ROS Types

```c
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular
```
### ROS Topics

## Mathematical Models

## Acknowledgements

1. [ROS Robot With Lego EV3 and Docker](https://www.instructables.com/id/ROS-Robot-With-Lego-EV3-and-Docker/) for ev3 control ros module

## Future Work

## References


