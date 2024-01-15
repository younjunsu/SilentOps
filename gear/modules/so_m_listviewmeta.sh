#!/bin/bash
#############################################################################
# script inheritance relationship 

#############################################################################
option1=$1
option2=$2
option3=$3
option4=$4
option5=$5

source "$so_scriptdirectory"/so_s_listselecttype.sh "$option1" "$option2"
for so_m_container in ${so_s_contlistarray[@]}
do
    export so_m_container=$so_m_container
    source "$so_scriptdirectory"/so_s_listmeta.sh
    source "$so_scriptdirectory"/so_s_healthcheck.sh ping
    source "$so_scriptdirectory"/so_s_healthcheck.sh sshport

    printf "%10s\t\t%10s\t\t%10s\t%10s \n" "$so_cont_name" "$so_cont_ip" "$so_alive_ping_message" "$so_alive_sshport_message"
done
