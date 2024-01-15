#!/bin/bash
#############################################################################
#############################################################################
option1=$1
option2=$2

if [ "all" = "$option2" ]
then
   export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |awk '{print $2}'`)
elif [ "tibero" = "$option2" ]
then
    export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |grep -i tibero |awk '{print $2}'`)
elif [ "oracle" = "$option2" ]
then
    export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |grep -i oracle |awk '{print $2}'`)
elif [ "cubrid" = "$option2" ]
then
    export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |grep -i cubrid |awk '{print $2}'`)
elif [ "postgres" = "$option2" ]
then
    export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |grep -i postgres |awk '{print $2}'`)
elif [ "mysql" = "$option2" ]
then
    export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |grep -i mysql |awk '{print $2}'`)
elif [ "maria" = "$option2" ]
then
    export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |grep -i maria |awk '{print $2}'`)
elif [ "db2" = "$option2" ]
then
    export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |grep -i db2 |awk '{print $2}'`)
else
    exit 1
fi
