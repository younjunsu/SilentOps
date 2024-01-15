#!/bin/bash
#############################################################################
export so_homedirectory="/root/SilentOps"
export so_containerlistfile="$so_homedirectory/silentops.cfg"
export so_componetdirectory="$so_homedirectory/gear/components"
export so_mouledirectory="$so_homedirectory/gear/modules"
export so_scriptdirectory="$so_homedirectory/gear/scripts"
#############################################################################
option1_type=$1
option2_componet1=$2
option3_componet2=$3
option4_componet3=$4
option5_componet4=$5

function fn_environment(){
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


case "$option1_type" in 
    "help")
        # Message
        fn_message;;
    "environment")
        # environment
        fn_environment;;
    "listview")
        # ListView
        sh "$so_componetdirectory"/so_c_listview.sh "$option2_componet1" "$option3_componet2";;
    *)
        # Message
        fn_message;;
esac



