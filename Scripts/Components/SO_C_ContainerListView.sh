#!/bin/bash
#############################################################################
# script inheritance relationship 
export so_compentname="so_c_containerlistview"
export so_modulename="so_m_containerlistviewmeta"
#############################################################################

echo
echo "  container "
echo " ----------------------------------------------------------------------"
printf "%10s\t\t%10s\t\t%10s\t%10s \n" "name" "ip" "alive" "ssh(tcp22)"
echo " ----------------------------------------------------------------------"
sh "$so_scriptdirectory"/so_listselecttype.sh tibero
sh "$so_scriptdirectory"/so_listmeta.sh
