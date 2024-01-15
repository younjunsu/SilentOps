#!/bin/bash
#############################################################################
# script inheritance relationship 

#############################################################################
option1_module1=$1
option2_module2=$2
option3_module3=$3

clear
echo
echo "  Container "
echo " ----------------------------------------------------------------------"
printf "%10s\t\t%10s\t\t%10s\t%10s \n" "Name" "IPv4" "Alive" "SSH(tcp22)"
echo " ----------------------------------------------------------------------"
sh "$so_mouledirectory"/so_m_listviewmeta.sh "$option1_module1" "$option2_module2"
