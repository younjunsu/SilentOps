#!/bin/bash
#############################################################################
# $1:   type
# $2:   cont_name
# $3:   ipaddress
# $4:   username
# $5:   password
# $6:   ssh port (defualt 22)
#############################################################################
option1=$1
option2=$2
option3=$3
option4=$4
option5=$5

export so_cont_type=`awk -v containername="$so_m_container" '$2 == containername' "$so_containerlistfile" |awk '{print $1}'`
export so_cont_name=`awk -v containername="$so_m_container" '$2 == containername' "$so_containerlistfile" |awk '{print $2}'`
export so_cont_ip=`awk -v containername="$so_m_container" '$2 == containername' "$so_containerlistfile" |awk '{print $3}'`
export so_cont_username=`awk -v containername="$so_m_container" '$2 == containername' "$so_containerlistfile" |awk '{print $4}'`
export so_cont_password=`awk -v containername="$so_m_container" '$2 == containername' "$so_containerlistfile" |awk '{print $5}'`
export so_cont_sshport=`awk -v containername="$so_m_container" '$2 == containername' "$so_containerlistfile" |awk '{print $6}'`


if [ -z "$so_cont_sshport" ]
then
    export so_cont_sshport=22
fi
