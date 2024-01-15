#!/bin/bash
# $1:   Type
# $2:   CONT_Name
# $3:   IPAddress
# $4:   UserName
# $5:   Password
# $6:   SSH Port (defualt 22)

for SO_CONT_Var in "${SO_ConntainerListArray[@]}"
do
    export SO_CONT_Type=`grep -w "$SO_CONT_Var" "$SO_CONT_ListFile" |awk '{print $1}'`
    export SO_CONT_Name=`grep -w "$SO_CONT_Var" "$SO_CONT_ListFile" |awk '{print $2}'`
    export SO_CONT_IP=`grep -w "$SO_CONT_Var" "$SO_CONT_ListFile" |awk '{print $3}'`
    export SO_CONT_UserName=`grep -w "$SO_CONT_Var" "$SO_CONT_ListFile" |awk '{print $4}'`
    export SO_CONT_Password=`grep -w "$SO_CONT_Var" "$SO_CONT_ListFile" |awk '{print $5}'`
    export SO_ConntainerSSHPort=`grep -w "$SO_CONT_Var" "$SO_CONT_ListFile" |awk '{print $6}'`
	if [ -z "$SO_MouleName" ]
	then
		2>/dev/null
	elif [ -n "$SO_MouleName" ]
	then 
		sh "$SO_MouleDirectory"/"$SO_MouleName".sh
	fi
done
