#!/bin/bash
#############################################################################
#############################################################################
option1=$1
option2=$2
option3=$3
option4=$4
option5=$5

if [ "all" = "$option2" ]
then
   export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |awk '{print $2}'`)
elif [ "tibero" = "$option2" ]
then
    export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |grep -w "^tibero" |awk '{print $2'}`)
elif [ "oracle" = "$option2" ]
then
    export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |grep -w "^oracle" |awk '{print $2}'`)
elif [ "cubrid" = "$option2" ]
then
    export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |grep -w "^cubrid" |awk '{print $2}'`)
elif [ "postgres" = "$option2" ]
then
    export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |grep -w "^postgres" |awk '{print $2}'`)
elif [ "mysql" = "$option2" ]
then
    export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |grep -w "^mysql" |awk '{print $2}'`)
elif [ "maria" = "$option2" ]
then
    export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |grep -w "^maria" |awk '{print $2}'`)
elif [ "db2" = "$option2" ]
then
    export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |grep -w "^db2" |awk '{print $2}'`)
elif [ "team" = "$option2" ]
then
    export so_s_contlistarray=(`cat $so_containerlistfile |grep -v "#" |grep -w "^team" |awk '{print $2}'`)
else
    exit 1
fi
