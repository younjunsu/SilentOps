#!/bin/bash
#############################################################################
#############################################################################
option1=$1

if [ "all" = "$option1" ]
then
   export so_s_contlistarray=(`awk '{print $3}' $so_containerlistfile |grep -v "#"`)
elif [ "tibero" = "$option1" ]
then
    export so_s_contlistarray=(`awk '{print $3}' $so_containerlistfile |grep -v "#" |grep -i tibero`)
elif [ "oracle" = "$option1" ]
then
    export so_s_contlistarray=(`awk '{print $3}' $so_containerlistfile |grep -v "#" |grep -i oracle`)
elif [ "cubrid" = "$option1" ]
then
    export so_s_contlistarray=(`awk '{print $3}' $so_containerlistfile |grep -v "#" |grep -i cubrid`)
elif [ "postgres" = "$option1" ]
then
    export so_s_contlistarray=(`awk '{print $3}' $so_containerlistfile |grep -v "#" |grep -i postgres`)
elif [ "mysql" = "$option1" ]
then
    export so_s_contlistarray=(`awk '{print $3}' $so_containerlistfile |grep -v "#" |grep -i mysql`)
elif [ "maria" = "$option1" ]
then
    export so_s_contlistarray=(`awk '{print $3}' $so_containerlistfile |grep -v "#" |grep -i maria`)
elif [ "db2" = "$option1" ]
then
    export so_s_contlistarray=(`awk '{print $3}' $so_containerlistfile |grep -v "#" |grep -i db2`)
else
    exit 1
fi
