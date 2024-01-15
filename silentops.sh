#!/bin/bash
#############################################################################
export so_docker_server_ip="bulltakbulltak.duckdns.org"
export so_docker_server_user="devpg"
export so_docker_server_password="rlaxogml32!"
export so_homedirectory="/root/SilentOps"
export so_containerlistfile="$so_homedirectory/silentops.cfg"
export so_componetdirectory="$so_homedirectory/gear/components"
export so_mouledirectory="$so_homedirectory/gear/modules"
export so_scriptdirectory="$so_homedirectory/gear/scripts"
#############################################################################
option1=$1
option2=$2
option3=$3
option4=$4
option5=$5

function fn_environment(){
    export so_docker_server_ip="$so_docker_server_ip"
    export so_docker_server_user="$so_docker_server_user"
    export so_docker_server_password="$so_docker_server_password"
    export so_homedirectory="/root/SilentOps"        
    export so_homedirectory="$so_homedirectory"
    export so_containerlistfile="$so_containerlistfile"
    export so_componetdirectory="$so_componetdirectory"
    export so_mouledirectory="$so_mouledirectory"
    export so_scriptdirectory="$so_scriptdirectory"
}

function fn_message(){
    clear
    echo " # SilentOps Tool (by. junsuyoun)"
    echo " ----------------------------------------------------------------------"
    so_message="  A tool that enhances user convenience in a containerized environment."

    for ((i=0; i<${#so_message}; i++)); do
        #red=$((RANDOM % 256));green=$((RANDOM % 256));blue=$((RANDOM % 256))
        printf "\033[38;2;%d;%d;%dm\033[48;5;0m%s\033[0m" "$red" "$green" "$blue" "${so_message:$i:1}"
        sleep 0.01
    done

    echo ""
    echo ""
    echo "  # Controlling Containers"
    echo " ----------------------------------------------------------------------"
    echo "  [*] Container Monitor"
    echo "      $ sh SilentOps mon all	    # All Container "
    echo "      $ sh SilentOps mon team	    # Project Container"
    echo "      $ sh SilentOps mon oracle	# Oracle Container" 
    echo "      $ sh SilentOps mon tibero	# Tibero Container"
    echo "      $ sh SilentOps mon cubrid	# Cubrid Container"
    echo ""
    echo "  [*] Container Start and Stop"
    echo " ----------------------------------------------------------------------"
    echo "      $ start	[ContainerName]"
    echo "      $ stop	[ContainerName]"
    echo ""
    echo "  [*] Container Connection"
    echo " ----------------------------------------------------------------------"
    echo "      $ conn	[ContainerName]"
    echo ""
    echo ""
    echo "  # Creating a Container"
    echo " ----------------------------------------------------------------------"
    echo ""
    echo ""
    echo "  # Using SilentOps Batch Mode"
    echo " ----------------------------------------------------------------------"
    echo ""
    echo ""
}


case "$option1" in 
    "help")
        # Message
        fn_message;;
    "environment")
        # environment
        fn_environment;;
    "listview")
        # ListView
        sh "$so_componetdirectory"/so_c_startstop.sh "$option1" "$option2";;
    "start")
        sh "$so_componetdirectory"/so_c_startstop.sh "$option1" "$option2";;;;
    "stop")
        sh "$so_componetdirectory"/so_c_startstop.sh "$option1" "$option2";;;;  
    *)
        # Message
        fn_message;;
esac




