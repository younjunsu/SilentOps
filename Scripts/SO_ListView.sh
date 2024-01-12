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

