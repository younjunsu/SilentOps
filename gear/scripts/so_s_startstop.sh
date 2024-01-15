#!/bin/bash
#############################################################################
#############################################################################
source so_s_environment.sh
option1=$1
option2=$2
option3=$3
option4=$4
option5=$5


function fn_start(){
    sshpass -p '$so_server_password' ssh $so_server_user@$so_server_ip "docker start $option2"
    sshpass -p '$so_server_password' ssh $so_server_user@$so_server_ip "docker exec -u 0 $option2 /usr/sbin/sshd"
}

function fn_stop(){
    sshpass -p '$so_server_password' ssh $so_server_user@$so_server_ip "docker stop $option2"
}

case $option1 in
    "start")
        fn_start $option2;;
    "stop")
        fn_stop $option2;;
    *)
        exit 1;;
esac

