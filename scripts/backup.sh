#!/bin/bash

##############################################
#Purpos : To take backup of /etc directory using shell script
#Version: 1.0
#Owner  : Aditya P <adityapatel@mycompany.com>
#Input  : None
#Output : backup should be completed success fully
###############################################

SOURCEDIR="/etc"
DESTDIR="/backup"

# check if you are a root user
ISROOT=`/usr/bin/whoami`
if [ "$ISROOT" != "root" ]; then
        echo "you are not a ROOT user"
        exit
fi

# check if source directory is present
if [ ! -d "$SOURCEDIR" ]; then
        echo "$SOURCEDIR is not present"
        exit
fi

# check if destination directory is present
if [ ! -d "$DESTDIR" ]; then
        #if not, create the directory
        echo "$DESTDIR directory is not found, creating $DESTDIR directory . . ."
        mkdir "$DESTDIR"        # creating the destination directory
        echo "$DESTDIR directory created successfully !!!"
else
        echo "$DESTDIR directory found !!!"
fi

# backup file name
ARCIVEFILE="etc-$(date +'%d-%B-%Y')"

# take the backup if not taken for today
if [ -f "$DESTDIR/$ARCIVEFILE.tar.gz" ]; then
        echo "backup already completed for today !!!"
        exit
else
        echo "Starting backup ... !!!!"
        /usr/bin/tar -cvzf "$DESTDIR/$ARCIVEFILE.tar.gz" "$SOURCEDIR"
fi

# check if backup completed successfully or not
if [ "$?" -eq 0 ]; then
	echo "*****************************************"
        echo "Successfully backuped files or folders : "
         /usr/bin/ls "$SOURCEDIR" | /usr/bin/wc -l

else
        echo "Backup from \"$SOURCEDIR\" to \"$DESTDIR\" Failed !!!!"
fi

