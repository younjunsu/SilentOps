#!/bin/bash
#############################################################################
#############################################################################
option1=$1
option2=$2
option3=$3

function fn_ping(){
    so_alive_ping=`timeout 0.1 ping "$so_cont_ip"`
    if [ -n "$so_alive_ping" ]
    then
        so_alive_ping_message="O"
    elif [ -z "$so_alive_ping" ]
    then
        so_alive_ping_message="X"
    fi
}

function fn_telnet(){
    so_alive_sshport=`timeout 0.1 telnet "$so_cont_ip" "$so_cont_sshport" |grep "escape"`
        
    if [ -n "$so_alive_sshport" ]
    then
        so_alive_sshport_message="O"
    elif
    then
        so_alive_sshport_message="X"
    fi
}

case $option1 in
    "ping")
        fn_ping;;
    "sshport")
        fn_telnet;;
    *)
        exit 1;
esac