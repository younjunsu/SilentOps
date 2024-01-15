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

export so_cont_type=`grep -w "$so_m_container" "$so_containerlistfile" |awk '{print $1}'`
export so_cont_name=`grep -w "$so_m_container" "$so_containerlistfile" |awk '{print $2}'`
export so_cont_ip=`grep -w "$so_m_container" "$so_containerlistfile" |awk '{print $3}'`
export so_cont_username=`grep -w "$so_m_container" "$so_containerlistfile" |awk '{print $4}'`
export so_cont_password=`grep -w "$so_m_container" "$so_containerlistfile" |awk '{print $5}'`
export so_cont_sshport=`grep -w "$so_m_container" "$so_containerlistfile" |awk '{print $6}'`
if [ -z "$so_cont_sshport" ]
then
    export so_cont_sshport=22
fi
