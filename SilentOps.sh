#!/bin/bash

export ContainerListFile=/root/work/welcome/container.list
export ContainerSSHCommandFile=/root/work/welcome/ssh_command.py

function FnContainerList(){ 
    ContainerListName="$1"
    if [ "all" = "$ContainerListName" ]
    then
       ContainerArray=(`awk '{print $1}' $ContainerListFile |grep -v "#"`)
    elif [ "tibero" = "$ContainerListName" ]
    then
        ContainerArray=(`awk '{print $1}' $ContainerListFile |grep -v "#" |grep -i tibero`)
    elif [ "oracle" = "$ContainerListName" ]
    then
        ContainerArray=(`awk '{print $1}' $ContainerListFile |grep -v "#" |grep -i oracle`)
    elif [ "cubrid" = "$ContainerListName" ]
    then
        ContainerArray=(`awk '{print $1}' $ContainerListFile |grep -v "#" |grep -i cubrid`)
    elif [ "postgres" = "$ContainerListName" ]
    then
        ContainerArray=(`awk '{print $1}' $ContainerListFile |grep -v "#" |grep -i postgres`)
    elif [ "mysql" = "$ContainerListName" ]
    then
        ContainerArray=(`awk '{print $1}' $ContainerListFile |grep -v "#" |grep -i mysql`)
    elif [ "maria" = "$ContainerListName" ]
    then
        ContainerArray=(`awk '{print $1}' $ContainerListFile |grep -v "#" |grep -i maria`)
    elif [ "db2" = "$ContainerListName" ]
    then
        ContainerArray=(`awk '{print $1}' $ContainerListFile |grep -v "#" |grep -i db2`)
    fi

    # Function Return Array Value
     FnContainerListView "${ContainerArray[@]}"
}

function FnContainerListView(){
    clear
    echo
    echo -e "\e[31m# RDBMS Container\e[0m"
    echo "-----------------------------------------------------------------------------------------"
    printf "%10s\t\t%10s\t\t%10s\t%10s \n" "Name" "IP" "Alive" "SSH(tcp22)"
    echo "-----------------------------------------------------------------------------------------"

    # local ContainerArray=($(FnContainerList))
    local ContainerArray=("$@")

    for ContainerVar in "${ContainerArray[@]}"
    do
        ContainerIP=`grep -w "$ContainerVar" $ContainerListFile | awk '{print $NF}'`
        AliveCheck=`timeout 0.1 ping $ContainerIP`
        SSHPortAlive=`timeout 0.1 telnet $ContainerIP 22 2>&1`
        SSHPortCheck=`echo $SSHPortAlive |grep "Escape"`
        if [ -n "$AliveCheck" ]
        then
            AliveMessage="O"
            if [ -n "$SSHPortCheck" ]
            then
                SSHPortMessage="O"
            elif [ -z "$SSHPortCheck" ]
            then
                SSHPortMessage="X"
            fi
        elif [ -z "$AliveCheck" ]
        then
            AliveMessage="X"
            SSHPortMessage="X"
        fi
        printf "%10s\t\t%10s\t\t%10s\t%10s \n" "$ContainerVar" "$ContainerIP" "$AliveMessage" "$SSHPortMessage"
    done
}

function FnContainerStart(){
    sshpass -p 'rlaxogml32!' ssh devpg@bulltakbulltak.duckdns.org "docker start $ContainerName"
    sshpass -p 'rlaxogml32!' ssh devpg@bulltakbulltak.duckdns.org "docker exec -u 0 $ContainerName /usr/sbin/sshd"
}

function FnContainerStop(){
    sshpass -p 'rlaxogml32!' ssh devpg@bulltakbulltak.duckdns.org "docker stop $ContainerName"
}

function FnContainerConnect(){
    sshpass -p 'tibero' ssh root@$ContainerName
}

SystemArgv1=$1
case "$SystemArgv1" in
    "all")
        FnContainerList "all";;
    "tibero")
        FnContainerList "tibero";;
    "oracle")
        FnContainerList "oracle";;
    "cubrid")
        FnContainerList "cubrid";;
    "postgres"|"postgresql")
        FnContainerList "postgres";;
    "mysql")
        FnContainerList "mysql";;
    "maria")
        FnContainerList "maria";;
    "db2")
        FnContainerList "db2";;
    "conn"|"connect")
        ContainerName=$2
        if [ -z "$ContainerName" ]
        then
            echo "sh container.sh connect %s"
            echo " %s : Container Name"
        elif [ -n "$ContainerName" ]
        then
             FnContainerConnect "$ContainerName"
        fi;;
    "start")        
        ContainerName=$2
        if [ -z "$ContainerName" ]
        then
            echo "sh container.sh start %s"
            echo " %s : Container Name"
        elif [ -n "$ContainerName" ]
        then
            FnContainerStart "$ContainerName"
        fi;;
    "stop")        
        ContainerName=$2        
        if [ -z "$ContainerName" ]
        then
            echo "sh container.sh stop %s"
            echo " %s : Container Name"
        elif [ -n "$ContainerName" ]
        then
            FnContainerStop "$ContainerName"
        fi;;
    "ssh")
        FnContainerSSHD;;
    "*")
        ;;  
esac

