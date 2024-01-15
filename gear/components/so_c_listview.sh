#!/bin/bash
#############################################################################
# script inheritance relationship 

#############################################################################
option1=$1
option2=$2
option3=$3
option4=$4
option5=$5

clear
echo
echo "  Container "
echo " --------------------------------------------------------------------------"
printf "%10s\t\t%10s\t\t%10s\t%10s \n" "Name" "IPv4" "Alive" "SSH(tcp22)"
echo " --------------------------------------------------------------------------"
source "$so_mouledirectory"/so_m_listviewmeta.sh "$option1" "$option2"
