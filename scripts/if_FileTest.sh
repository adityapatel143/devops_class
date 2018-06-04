#!/bin/bash

#############################################################
#Purpos : To learn file testing using if condition
#Version: 1.0
#Owner	: Aditya P <adityapatel@mycompany.com>
#Input	: None
#Output	: some output from in the terms of YES/NO or TRUE/FALSE
###############################################################

# working with if condition
if [ -f "/etc/passwd" ]; then
	#condition is true
	echo "file /etc/passwd is found"
fi

# working with if - else condition

if [ -r "/etc/shadow" ]; then
	#condition is true
	echo "file /etc/shadow file is readible by $USER"
else
	#condition is false
	echo "file /etc/shadow file is NOT readible by $USER"
fi
