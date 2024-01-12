#!/bin/bash
#############################################################################
SO_HomeDirectory="/root/SilentOps"
SO_ScriptDirectory="$SilentOpsHomeDirectory/Scripts"


#############################################################################
clear
echo " # SilentOps Tool (by. junsuyoun)"
echo " ----------------------------------------------------------------------"
SO_HelloMessage="  A tool that enhances user convenience in a containerized environment."

for ((i=0; i<${#SO_HelloMessage}; i++)); do
    #red=$((RANDOM % 256));green=$((RANDOM % 256));blue=$((RANDOM % 256))
    printf "\033[38;2;%d;%d;%dm\033[48;5;0m%s\033[0m" "$red" "$green" "$blue" "${SO_HelloMessage:$i:1}"
    sleep 0.02
done

echo ""
echo ""
echo "  # Controlling Containers"
echo " ----------------------------------------------------------------------"
echo "  [*] Container Monitor"
echo "      $ all	# All Container "
echo "      $ team	# Project Container"
echo "      $ oracle	# Oracle Container" 
echo "      $ tibero	# Tibero Container"
echo "      $ cubrid	# Cubrid Container"
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
echo "      $ ./SilentOps	--batch	%mode	%type	%sec"	
