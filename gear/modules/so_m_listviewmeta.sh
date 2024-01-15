#!/bin/bash
#############################################################################
# script inheritance relationship 

#############################################################################
option1_type=$1
option2_script1=$2
option3_script2=$3

sh "$so_scriptdirectory"/so_s_listselecttype.sh "$option1_type"
for so_m_container in ${so_s_contlistarray[@]}
do
    . ."$so_scriptdirectory"/so_s_listmeta.sh
    . ."$so_scriptdirectory"/so_s_healthcheck.sh
    printf "%10s\t\t%10s\t\t%10s\t%10s \n" "$so_cont_name" "$so_cont_ip" "$so_alivemessage" "$so_sshportmessage"
done
