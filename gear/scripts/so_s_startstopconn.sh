#!/bin/bash
#############################################################################
#############################################################################
# source "$so_homedirectory"/gear/scripts/so_s_environment.sh
option1=$1
option2=$2
option3=$3
option4=$4
option5=$5


function fn_start(){
	if [ "$option2" == "invaild_option" ]
	then
		so_all_start_list=(`sh "$so_homedirectory"/silentops.sh listview all |grep "X" |awk '{print $1}'`)
		for so_all_start_container in ${so_all_start_list[@]}
		do
    			sshpass -p $so_docker_server_password ssh $so_docker_server_user@$so_docker_server_ip "docker start $so_all_start_container"
 	   		sshpass -p $so_docker_server_password ssh $so_docker_server_user@$so_docker_server_ip "docker exec -u 0 $so_all_start_container /usr/sbin/sshd"
		done
	else
    		sshpass -p $so_docker_server_password ssh $so_docker_server_user@$so_docker_server_ip "docker start $option2"
 	   	sshpass -p $so_docker_server_password ssh $so_docker_server_user@$so_docker_server_ip "docker exec -u 0 $option2 /usr/sbin/sshd"
	fi
}

function fn_stop(){
        if [ "$option2" == "all" ]
        then
                so_all_stop_list=(`sh "$so_homedirectory"/silentops.sh listview all |grep "O" |awk '{print $1}'`)

                for so_all_stop_container in ${so_all_stop_list[@]}
                do
    			sshpass -p $so_docker_server_password ssh $so_docker_server_user@$so_docker_server_ip "docker stop $so_all_stop_container"
                done
	else
    		sshpass -p $so_docker_server_password ssh $so_docker_server_user@$so_docker_server_ip "docker stop $option2"
	fi
}

function fn_conn(){
    sshpass -p 'tibero' ssh root@$option2
}

case $option1 in
    "start")
        fn_start $option2;;
    "stop")
        fn_stop $option2;;
    "conn")
        fn_conn $option2;;
    *)
        exit 1;;
esac

