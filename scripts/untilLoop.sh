#!/bin/bash

##############################################
#Purpos : To learn until condition using shell script
#Version: 1.0
#Owner	: Aditya P <adityapatel@mycompany.com>
#Input	: None
#Output	: None
###############################################

#Syntax:

#	until [ condition ] 	# false		<-- until works if condition is false
#	do
#		#command or set of command
#		# modify the condition to true
#	done
#------------------------------------------------------------------------------------


NUM=1

until [ $NUM -gt 10 ] # making the condition false
do
	echo "The number is : $NUM"
	NUM=`expr $NUM + 2`
done

