#!/bin/bash
#############################################################################
export SO_HomeDirectory="/root/SilentOps"
export SO_ScriptDirectory="$SO_HomeDirectory/Scripts"
export SO_MouleDirectory="$SO_ScriptDirectory/Modules"
export SO_ComponetDirectory="$SO_ScriptDirectory/Components"
export SO_ContainerListFile="$SO_HomeDirectory/SilentOps.cfg"

#############################################################################

clear
echo " # SilentOps Tool (by. junsuyoun)"
echo " ----------------------------------------------------------------------"
SO_HelloMessage="  A tool that enhances user convenience in a containerized environment."

for ((i=0; i<${#SO_HelloMessage}; i++)); do
    #red=$((RANDOM % 256));green=$((RANDOM % 256));blue=$((RANDOM % 256))
    printf "\033[38;2;%d;%d;%dm\033[48;5;0m%s\033[0m" "$red" "$green" "$blue" "${SO_HelloMessage:$i:1}"
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

sh $SO_ComponetDirectory/SO_C_ContainerListView.sh 
