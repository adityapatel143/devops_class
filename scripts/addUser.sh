#!/bin/bash

##############################################
#Purpos : To learn how to add the user usins the shell script
#Version: 1.0
#Owner	: Aditya P <adityapatel@mycompany.com>
#Input	: name of the user 
#Output	: user created successfully
###############################################

# Task 1
USERNAME=$1

if [ ! "$USERNAME" ] ; then 
	echo "Please enter the user in the argunment"
	exit
fi

# Task 2
USERPASS='redhat'

# Task 3
ISROOT=`/usr/bin/whoami`

if [ "$ISROOT" != "root" ]; then
	echo "You are not ROOT user"
	exit
fi

#Task 4

/usr/bin/id $USERNAME

#Task 4.a
if [ "$?" -eq 0 ]; then
	echo "user $USERNAME is already present"
	exit
fi

#Task 4.b
/sbin/useradd $USERNAME

#Task 4.c

echo "$USERPASS" | /usr/bin/passwd --stdin "$USERNAME"

#Task 5

/usr/bin/chage -d 0 $USERNAME

#Task 6

echo "The user $USERNAME is created succeddfully"


