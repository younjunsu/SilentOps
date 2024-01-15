
so_alivecheck=`timeout 0.1 ping "$so_containerip"`
so_sshportalive=`timeout 0.1 telnet "$so_containerip" "$so_containersshport" 2>&1`
so_sshportcheck=`echo "$so_sshportalive" |grep "escape"`


if [ -n "$so_alivecheck" ]
then
    so_alivemessage="o"
    if [ -n "$so_sshportcheck" ]
    then
        so_sshportmessage="o"
    elif [ -z "$so_sshportcheck" ]
    then
        so_sshportmessage="x"
    fi
elif [ -z "$so_alivecheck" ]
then
    so_alivemessage="x"
    so_sshportmessage="x"
fi