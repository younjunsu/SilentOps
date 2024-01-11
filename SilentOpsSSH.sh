#!/bin/bash


function FnContainerSSH(){
	sshpass -p '$1' ssh $user
}
