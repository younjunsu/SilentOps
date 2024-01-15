#!/bin/bash
#############################################################################
#############################################################################
option1=$1
option2=$2

if [ "all" = "$option2" ]
then
   export so_s_contlistarray=(`awk '{print $3}' $so_containerlistfile |grep -v "#"`)
elif [ "tibero" = "$option2" ]
then
    export so_s_contlistarray=(`awk '{print $3}' $so_containerlistfile |grep -v "#" |grep -i tibero`)
elif [ "oracle" = "$option2" ]
then
    export so_s_contlistarray=(`awk '{print $3}' $so_containerlistfile |grep -v "#" |grep -i oracle`)
elif [ "cubrid" = "$option2" ]
then
    export so_s_contlistarray=(`awk '{print $3}' $so_containerlistfile |grep -v "#" |grep -i cubrid`)
elif [ "postgres" = "$option2" ]
then
    export so_s_contlistarray=(`awk '{print $3}' $so_containerlistfile |grep -v "#" |grep -i postgres`)
elif [ "mysql" = "$option2" ]
then
    export so_s_contlistarray=(`awk '{print $3}' $so_containerlistfile |grep -v "#" |grep -i mysql`)
elif [ "maria" = "$option2" ]
then
    export so_s_contlistarray=(`awk '{print $3}' $so_containerlistfile |grep -v "#" |grep -i maria`)
elif [ "db2" = "$option2" ]
then
    export so_s_contlistarray=(`awk '{print $3}' $so_containerlistfile |grep -v "#" |grep -i db2`)
else
    exit 1
fi
