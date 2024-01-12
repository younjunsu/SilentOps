#!/bin/bash

export SilentOpsModuleName="SO_M_ContainerListViewMeta"

SO_AliveCheck=`timeout 0.1 ping "$SO_ContainerIP"`
SO_SSHPortAlive=`timeout 0.1 telnet "$SO_ContainerIP" "$SO_ContainerSSHPort" 2>&1`
SO_SSHPortCheck=`echo "$SO_SSHPortAlive" |grep "Escape"`
if [ -n "$SO_AliveCheck" ]
then
    SO_AliveMessage="O"
    if [ -n "$SO_SSHPortCheck" ]
    then
        SO_SSHPortMessage="O"
    elif [ -z "$SO_SSHPortCheck" ]
    then
        SO_SSHPortMessage="X"
    fi
elif [ -z "$SO_AliveCheck" ]
then
    SO_AliveMessage="X"
    SO_SSHPortMessage="X"
fi
printf "%10s\t\t%10s\t\t%10s\t%10s \n" "$SO_ContainerVar" "$SO_ContainerIP" "$SO_AliveMessage" "$SO_SSHPortMessage"
