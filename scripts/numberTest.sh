#!/bin/bash

##############################################
#Purpos : To learn how to work with numbers in shell script
#Version: 1.0
#Owner	: Aditya P <adityapatel@mycompany.com>
#Input	: None
#Output	: See the result of student based on marks
###############################################

MARKS=45

if [ "$MARKS" -gt 65 ]; then 
	echo " Passed : First Division !!! "
elif [ "$MARKS" -gt 55 ]; then 
	echo " Passed : Second Division !!! "
elif [ "$MARKS" -ge 45 ]; then 
	echo " Passed : Third Division !!! "
else
	echo " Fail !!! "
fi
