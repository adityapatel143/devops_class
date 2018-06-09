#!/bin/bash

##############################################
#Purpos : To learn case statement using shell script
#Version: 1.0
#Owner	: Aditya P <adityapatel@mycompany.com>
#Input	: enter the desired OS  name
#Output	: information regarding that OS
###############################################


OSNAME=$1

if [ ! "$1" ]; then 
	echo "Please pass the OS name in the argunment"
	exit
fi

case "$OSNAME" in
	RHEL)
		echo "You are using $OSNAME"
		echo "yum -y install <package_name>"
		;;
	Ubuntu)
		echo "You are using $OSNAME"
		echo "apt-get install <package_name>"
		;;
	SUSE)
		echo "You are using $OSNAME"
		echo "rpm -ivh <package_name>"
		;;	
	*)
		echo "You are using $OSNAME"
		echo "Sorry no information related $OSNAME"
		;;
esac
