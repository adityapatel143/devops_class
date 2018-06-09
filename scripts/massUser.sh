#!/bin/bash

##############################################
#Purpos : To learn how to create multiple user using shell script
#Version: 1.0
#Owner	: Aditya P <adityapatel@mycompany.com>
#Input	: file contains users name
#Output	: successfully users created output
###############################################

USERLIST=$1

#checking if user is root or not
if [ $(id -u) != 0 ]; then 		# $(id -u) will provide the user id no ex. 1002, for root it is 0
	echo "Please run the script as a ROOT user"
	exit
fi

#checkiog if file is provided or not
if [ ! "$USERLIST" ]; then
	echo "Please provide the file having users name"
	exit
fi

#checking if provided file type is correct or not
if [ ! -f "$USERLIST" ]; then
	echo "Provided file type is not correct"
	exit
fi

# reading the names from the file using loop
for OURUSER in `cat $USERLIST`
do
	echo " creating user : $OURUSER"
	echo -e "\n----------------------------------"
	#calling the script which can add the user(already created)
	./addUser.sh $OURUSER
	echo -e "\n----------------------------------"
done

# checking if all the users creaed successfully
if [ "$?" -eq 0 ]; then
	echo -e "\n -- ** Users created successfully ** --"
else
	echo -e "\n !!! Failed creating All/some users !!!"
fi
