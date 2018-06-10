#!/bin/bash

##############################################
#Purpos : To learn the sed command in shell scripting
#Version: 1.0
#Owner  : Aditya P <adityapatel@mycompany.com>
#Input  : None
#Output : None
###############################################

INPUTFILE=$1    # read the argunmant

if [ ! -f "$1" ]; then
        # if false
        echo "Please provide the file as argunment"
        exit
fi
MAXLIMIT=0      # variable to count the maximum limit of wrong input
ANS=Y   # Condition for while loop

while [ "$ANS" == "Y" -o "$ANS" == "y" ]
do      # if coondition is true the execute the below
#-----------------------------------------------------------------------

        # Reading the total lines in the provided file
        echo -e "\nTotal no of lines in the document is :"; cat $INPUTFILE | wc -l     
	echo -e "\nPlease select the options from below"
        echo -e "------------------------------------\n"

        echo -e "1.\tSee the file content with line number"
        echo -e "2.\tFind the lines with matching word"
        echo -e "3.\tFind the lines with exect maching word "
        echo -e "4.\tReplacing all the occurrence of the pattern in a line"
        echo -e "5.\tReplacing exectly matching pattern in a line"
        echo -e "6.\tExit"

        echo -e "\n"

        read -p "Input your option : " SELECTEDOPT      # getting the user option

        case "$SELECTEDOPT" in

                1)
                sed = $INPUTFILE | sed 'N;s/\n/\t/'     # N is for reading the next line
                echo -e "\n"
                ;;

                2)
                read -p "Enter the word you want to search : " MATCHINGWORD     # -p take input in same line
                sed -n "/$MATCHINGWORD/{=;p;}" $INPUTFILE | sed 'N;s/\n/\t/'
                ;;
               
		3)
                read -p "Enter the word you want to search : " MATCHINGWORD
                sed -n "/\<$MATCHINGWORD\>/{=;p;}" $INPUTFILE | sed 'N;s/\n/\t/'
                ;;

                4)
                read -p "Enter the word you want to replace : " MATCHINGWORD
                read -p "Enter the new word : " NEWWORD
                sed -i "s/"$MATCHINGWORD"/"$NEWWORD"/g" $INPUTFILE      # -i search and insert
                sed -n "/$NEWWORD/{=;p;}" $INPUTFILE | sed 'N;s/\n/\t/'
                ;;

                5)
                read -p "Enter the word you want to replace : " MATCHINGWORD
                read -p "Enter the new word : " NEWWORD
                sed -i "s/\<$MATCHINGWORD\>/$NEWWORD/g" $INPUTFILE      # -i search and insert
                sed -n "/\<$NEWWORD\>/{=;p;}" $INPUTFILE | sed 'N;s/\n/\t/'
		;;

		6)
		echo -e "\n -- ** Thank You for using this script ** -- \n"
		exit
		;;

                *)
                echo "Please choose correct option"
                if [ "$MAXLIMIT" == 2 ]; then
                        echo -e "\n !!!  Your wrong choice limit has been crossed !!! \n"
                        echo -e " \tExecting from script \n"
                        exit
                else
                        MAXLIMIT=`expr $MAXLIMIT + 1`
                fi
                ;;

        esac    #end of case statement

read -p  "Do you want to continue [Y/N]: " ANS

done    # end of while statement

echo -e "\n -- ** Thank You for using this script ** -- \n"


