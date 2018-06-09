#!/bin/bash

##############################################
#Purpos : To find the normal users from the /etc/passwd file
#Version: 1.0
#Owner	: Aditya P <adityapatel@mycompany.com>
#Input	: /etc/passwd file
#Output	: List of normal users
###############################################

#Syntax:

#awk options 'selection _criteria {action }' input-file > output-file

#--------------------------------------------------------------------
echo -e "\nBelow are the Normal users\n"

# -F is field seperator and in below example the seperator is ":"
# selection_criteria is /home/

# $0 for the whole line.
# $1 for the first field.
# $2 for the second field.
# $n for the nth field.
# The whitespace character like space or tab is the default separator between fields in awk


# Method 1
#awk -F: '/home/ {print $1}' /etc/passwd

# Method 2

awk -F: '{if($3 >= 1000) print $1}' /etc/passwd

echo -e "\n-------------------------------"


