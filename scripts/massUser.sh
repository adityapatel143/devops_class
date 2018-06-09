#!/bin/bash

##############################################
#Purpos : To learn how to create multiple user using shell script
#Version: 1.0
#Owner	: Aditya P <adityapatel@mycompany.com>
#Input	: file contains users name
#Output	: successfully users created output
###############################################

USERLIST=$1

if [ ! "$USERLIST" ]; then
	echo "Please provide the file having users name"
	exit
fi

if [ ! -f "$USERLIST" ]; then
	echo "Provided file type is not correct"
	exit
fi

for OURUSER in `cat $USERLIST`
do
	echo " name of user is : $OURUSER"
done
