#!/bin/bash

##############################################
#Purpos : To learn shell script
#Version: 1.0
#Owner	: Aditya P <adityapatel@mycompany.com>
#Input	: None
#Output	: None
###############################################

#checking if user is root or not
if [ $(id -u) != 0 ]; then              # $(id -u) will provide the user id no ex. 1002, for root it is 0
        echo "You are not root user"
        exit
fi
# Note: for checking root below are the following options
# 1. if  [ `id -u` -ne 0 ];     then;   echo "User is not root"
# 2. if  [ `whoami` = root ];   then;   echo "User is root"
# 3. if  [ $(whoami) == "root"]; then;  echo "User is root"
# 4. if  [ "$EUID" -ne 0 ];     then;   echo "User is not root"

# Note: avoide using direct command
# Ex:

#	`whoami`		<--- Avoide
#	`/usr/bin/whoami`	<--- Good practice to use it
