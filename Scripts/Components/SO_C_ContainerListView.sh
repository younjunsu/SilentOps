#!/bin/bash
#############################################################################
export SO_HomeDirectory="/root/SilentOps"
export SO_ScriptDirectory="$SO_HomeDirectory/Scripts"
export SO_MouleDirectory="$SO_ScriptDirectory/Modules"
export SO_ComponetDirectory="$SO_ScriptDirectory/Components"
export SO_ContainerListFile="$SO_HomeDirectory/SilentOps.cfg"
#############################################################################

export SilentOpsCompentName="SO_C_ContainerListView"
export SilentOpsModuleName="SO_M_ContainerListViewMeta"

echo
echo "  Container "
echo " ----------------------------------------------------------------------"
printf "%10s\t\t%10s\t\t%10s\t%10s \n" "Name" "IP" "Alive" "SSH(tcp22)"
echo " ----------------------------------------------------------------------"
sh "$SO_ScriptDirectory"/SO_ListSelectType.sh tibero
export SO_ConntainerListArray=${SO_ConntainerListArray[@]}
sh "$SO_ScriptDirectory"/SO_ListMeta.sh
