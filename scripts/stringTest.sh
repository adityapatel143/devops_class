#!/bin/bash

##############################################
#Purpos : To learn how string comparisons are done shell script
#Version: 1.0
#Owner	: Aditya P <adityapatel@mycompany.com>
#Input	: Two different strings
#Output	: Check if the current user is root or not
###############################################

#Syntax:

#	String1 == String2
#	String1 != String2

#STRING_1=`whoami`  # <---- not recomended

# Always use full path for the kind of situation

STRING_1=`/usr/bin/whoami`

if [ "$STRING_1" == "root" ]; then
	echo " This is a root user"
else
	echo " No, this is $STRING_1 user"
fi
