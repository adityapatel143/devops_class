#!/bin/bash

##############################################
#Purpos : To change httpd port no using shell script
#Version: 1.0
#Owner	: Aditya P <adityapatel@mycompany.com>
#Input	: None
#Output	: None
###############################################

INPUTFILE=$1
GETNEWPORT=$2

# check if user is root or not
if [ $(id -u) != 0 ]; then
	echo " Only ROOT can run this script"
	exit
fi

if [ ! -f "$1" ]; then 
	echo " Please pass the file as an first argunment "
	exit
fi

# Finding the port no and extracting it
MYPORT=`cat $INPUTFILE | grep "^Listen" | awk '{ print $2 }'`

echo " Your current port is : $MYPORT"

# checking if new port is provided or not
if [ ! "$2" ]; then
        echo " Please pass the port no in the second argunment "
        exit
fi

if [ $2 -gt 0 -a $2 -le  65535  ]; then
	echo "true"
	sed -i "s/Listen $MYPORT/Listen $GETNEWPORT/" $INPUTFILE
else
	echo "false"
fi

