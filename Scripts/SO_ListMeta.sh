#!/bin/bash
# $1:   Type
# $2:   ContainerName
# $3:   IPAddress
# $4:   UserName
# $5:   Password
# $6:   SSH Port (defualt 22)

for SO_ContainerVar in "${$SO_ConntainerListArray}"
do
    export SO_ContainerType=`grep -w "$SO_ContainerVar" "$SO_ContainerListFile" |awk '{print $1}'
    export SO_ContainerName=`grep -w "$SO_ContainerVar" "$SO_ContainerListFile" |awk '{print $2}'
    export SO_ContainerIP=`grep -w "$SO_ContainerVar" "$SO_ContainerListFile" |awk '{print $3}'
    export SO_ContainerUserName=`grep -w "$SO_ContainerVar" "$SO_ContainerListFile" |awk '{print $4}'
    export SO_ContainerPassword=`grep -w "$SO_ContainerVar" "$SO_ContainerListFile" |awk '{print $5}'
    export SO_ConntainerSSHPort=`grep -w "$SO_ContainerVar" "$SO_ContainerListFile" |awk '{print $6}'
done
