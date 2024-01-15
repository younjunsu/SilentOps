#!/bin/bash
#############################################################################
# script inheritance relationship 

#############################################################################
option1=$1

if [ -z "$option1" ] 
then
    sh "$so_mouledirectory"/so_m_listviewmeta.sh "$option1"

    echo
    echo "  Container "
    echo " ----------------------------------------------------------------------"
    printf "%10s\t\t%10s\t\t%10s\t%10s \n" "Name" "IPv4" "Alive" "SSH(tcp22)"
    echo " ----------------------------------------------------------------------"
elif [ -n "$option1" ]
then
    exit 1
fi

