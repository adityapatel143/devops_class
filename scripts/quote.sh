#!/bin/bash

##########################################################
#Purpos : To learn to learn how quote works in shell script
#Version: 1.0
#Owner	: Aditya P <adityapatel@mycompany.com>
#Input	: None
#Output	: see different types of output using quotes
###########################################################

MYVAR='date'
echo "This output is from single quote: $MYVAR"

MYVAR="date"
echo "This output is from double quote: $MYVAR"

MYVAR=`date`
echo "This output is from back tick: $MYVAR"

