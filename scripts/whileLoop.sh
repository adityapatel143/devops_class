#!/bin/bash

##############################################
#Purpos : To learn while loop shell script
#Version: 1.0
#Owner	: Aditya P <adityapatel@mycompany.com>
#Input	: None
#Output	: looping output from while
###############################################

#Syntax:

#	while [ condition ] #true <-- while exicutes if the condion is true
#	do
#		# command or set of command
#		#modify the command #false
#	done
#---------------------------------------------------------------------------

NUM=1

while [ $NUM -le 5 ]
do
	echo "The number is : $NUM"
	NUM=`expr $NUM + 1`
done

#while as 'set'

echo -e "\n------------------------------"
echo -e "while as set"
echo  "------------------------------"

START_NUM=0
INC_NUM=2
END_NUM=10

while [ $START_NUM -lt $END_NUM ]
do
	echo "The number is : $START_NUM"
	START_NUM=`expr $START_NUM + $INC_NUM`
done
