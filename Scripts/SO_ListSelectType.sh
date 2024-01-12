#!/bin/bash
#############################################################################
SO_ContainerListFile="$SlientOpsHomeDirectory/SilentOps.cfg"


#############################################################################

SO_SelectType="$1"
if [ "all" = "$SO_SelectType" ]
then
   SO_ConntainerListArray=(`awk '{print $1}' $SO_ContainerListFile |grep -v "#"`)
elif [ "tibero" = "$SO_SelectType" ]
then
    SO_ConntainerListArray=(`awk '{print $1}' $SO_ContainerListFile |grep -v "#" |grep -i tibero`)
elif [ "oracle" = "$SO_SelectType" ]
then
    SO_ConntainerListArray=(`awk '{print $1}' $SO_ContainerListFile |grep -v "#" |grep -i oracle`)
elif [ "cubrid" = "$SO_SelectType" ]
then
    SO_ConntainerListArray=(`awk '{print $1}' $SO_ContainerListFile |grep -v "#" |grep -i cubrid`)
elif [ "postgres" = "$SO_SelectType" ]
then
    SO_ConntainerListArray=(`awk '{print $1}' $SO_ContainerListFile |grep -v "#" |grep -i postgres`)
elif [ "mysql" = "$SO_SelectType" ]
then
    SO_ConntainerListArray=(`awk '{print $1}' $SO_ContainerListFile |grep -v "#" |grep -i mysql`)
elif [ "maria" = "$SO_SelectType" ]
then
    SO_ConntainerListArray=(`awk '{print $1}' $SO_ContainerListFile |grep -v "#" |grep -i maria`)
elif [ "db2" = "$SO_SelectType" ]
then
    SO_ConntainerListArray=(`awk '{print $1}' $SO_ContainerListFile |grep -v "#" |grep -i db2`)
fi

# Return Array Value
export "${SO_ConntainerListArray[@]}"
