#!/usr/bin/env bash

BLUETEXT="\033[1;34m"
REDTEXT="\033[1;31m"
WHITETEXT="\033[0;37m"
GREENTEXT="\033[1;32m"


function ros_env_setup {
    echo -e "$BLUETEXT\nSetting up ROS env"
    set +x
    . /home/user/.bashrc
    source /opt/ros/kinetic/setup.bash
    source /home/user/catkin_ws/devel/setup.bash
    set -x
    echo -e "$BLUETEXT\nSetting up ROS env DONE"
    echo -e "\n$WHITETEXT"
}

function go_ros_pkg {
    # This is to avoid all the rubish output of roscd command"
    set +x
    roscd $1
    echo "ROS CD TO $1"
    set -x
}


function exercise3_2 {
    
    rm -rf distance.txt
    roslaunch unit_3b_services_pkg start_bb8_move_in_square_service_server.launch & bb8_move_in_square_service_server_pid=$!
    rosrun unit_3b_services_pkg bb8_movement_detector.py & bb8_move_distance_pid=$!
    sleep 5
    roslaunch unit_3b_services_pkg call_bb8_move_in_square_service_server.launch
    kill $bb8_move_in_square_service_server_pid > /dev/null 2>&1
    rostopic echo /bb8_moved_distance/data -n1 > distance.txt
    num1=$(head -n 1 distance.txt)
    rm -rf distance.txt
    num2=3.0
    result=$(echo $num1'>'$num2 | bc -l)
    if [ $result == 0 ]; then
        echo -e "$REDTEXT\nNOT MOVED ENOUGH $num1<$num2, exercise3_2"
        echo -e "\n$WHITETEXT"
        kill $bb8_move_distance_pid > /dev/null 2>&1
        sleep 2
        exit 1
    else
        echo -e "$GREENTEXT\nMOVED ENOUGH $num1>$num2, Finished exercise3_2 Test OK"
        echo -e "\n$WHITETEXT"
        kill $bb8_move_distance_pid > /dev/null 2>&1
        sleep 2
        
    fi
    
    
}


function exercise3_3 {
    
    rm -rf distance.txt
    roscd;cd ..
    set +x
    echo "+ catkin_make --only-pkg-with-deps unit_3b_services_pkg"
    catkin_make --only-pkg-with-deps unit_3b_services_pkg
    echo "+ source devel/setup.bash"
    source devel/setup.bash
    set -x
    
    # We check it compiled the custom Service correctly"
    word_to_find="unit_3b_services_pkg/BB8CustomServiceMessage"
    result=$(rossrv list | grep -x $word_to_find)
    if [ $result == $word_to_find ]; then
        echo -e "$GREENTEXT\nCorrectly Compiled $word_to_find"
        echo -e "\n$WHITETEXT"
        
        # We launch the serverv and client to move BB8 in performing diferent size squares.
        # We also launch the distance mesure script
        roslaunch unit_3b_services_pkg start_bb8_move_custom_service_server_ex3_3.launch & custom_service_server_pid=$!
        rosrun unit_3b_services_pkg bb8_movement_detector.py & bb8_move_distance_pid=$!
        sleep 2
        roslaunch unit_3b_services_pkg call_bb8_move_in_square_custom_service_server_ex3_3.launch
        kill $custom_service_server_pid > /dev/null 2>&1
        
        
        # We check for the distnace moved
        rostopic echo /bb8_moved_distance/data -n1 > distance.txt
        num1=$(head -n 1 distance.txt)
        rm -rf distance.txt
        num2=29.0
        result=$(echo $num1'>'$num2 | bc -l)
        if [ $result == 0 ]; then
            echo -e "$REDTEXT\nNOT MOVED ENOUGH $num1<$num2"
            echo -e "\n$WHITETEXT"
            kill $bb8_move_distance_pid > /dev/null 2>&1
            sleep 2
            exit 1
        else
            echo -e "$GREENTEXT\nMOVED ENOUGH $num1>$num2, Finished exercise3_3 Test OK"
            echo -e "\n$WHITETEXT"
            kill $bb8_move_distance_pid > /dev/null 2>&1
            sleep 2
            
        fi
        
    else
        echo -e "$REDTEXT\nExercise3_3, Something went wrong in compilation $word_to_find"
        echo -e "\n$WHITETEXT"
        exit 1
    fi
    
    
    
}

function main {
    set -x
    set -e
    ros_env_setup
    example3_7
    exercise3_2
    example3_8
    exercise3_3
    set +e
    set +x
    
}

main
echo -e "$GREENTEXT\nFinished Unit3B Test OK"
echo -e "\n$WHITETEXT"