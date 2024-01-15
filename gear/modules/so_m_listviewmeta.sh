#!/bin/bash
#############################################################################
# script inheritance relationship 

#############################################################################
option1=$1

sh "$so_scriptdirectory"/so_s_listselecttype.sh "$option1"
for 
    printf "%10s\t\t%10s\t\t%10s\t%10s \n" "$so_containername" "$so_containerip" "$so_alivemessage" "$so_sshportmessage"
