#!/bin/bash

##############################################
#Purpos : To learn how for loop works shell script
#Version: 1.0
#Owner	: Aditya P <adityapatel@mycompany.com>
#Input	: none
#Output	: output of looping condition
###############################################

#Syntax
#		for VARNAME in LIST
#		do
#			#command or set of command
#		done
#-------------------------------------------------

for NUM in 1 2 3 4 5 
do
	echo "This is number : $NUM"
done

echo -e "\n*******************************"
echo -e "same esample using RANGE\n"

for NUM in {1..5}
do
        echo "This is number : $NUM"
done

echo -e "\n*******************************"
echo -e "printing string using for loop\n"

for OSNAME in MAC Ubuntu solaris RHEL
do
	echo "This operating system is : $OSNAME"
done


