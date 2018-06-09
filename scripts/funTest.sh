#!/bin/bash

##############################################
#Purpos : To learn how to work with function using shell script
#Version: 1.0
#Owner	: Aditya P <adityapatel@mycompany.com>
#Input	: None
#Output	: None
###############################################

# Function is a set of lable given to a set of command

# Syntax:
#
#	function_name()
#	{
#		#body of function
#	}
#-------------------------------------------------------------------------

# NOTE:	make sure first define the function and then call the function
# 1. the external function file do not have extention .sh 
# 2. the external function file do not start with #!/bin/bash
# 3. the external function file do not have execute permissions

# we have to source the external file Ex. source <file_name>
# the scope/lifetime of function is till the user session

# for making the function permanent add the file path in the ~/.bash_profile
#	<file_path>
#----------------------------------------------------------------------------

. functionFile		# <path> <filename>

#calling the function from other file i.e functionFile

todayDate

# defining the function in the script file
goodMorning()
{
	echo "Good Morning !! Have a nice day"
}

# calling the function defined in the same script
goodMorning	

activeUsers

