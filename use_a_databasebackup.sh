#!/bin/sh

#load config file
if [ -s "/etc/default/Backup-Owncloud" ] ; then
. /etc/default/Backup-Owncloud
fi

Backupfile=/PATH/TO/SPECIFIC/BACKUPFILE/owncloud-sql-bkp.bak

echo "if you REALY want to load a Backupfile in your Database, please edit the script"
echo "You want do use this file: "$Backupfile;
echo "if that is correct, just remove the # from the script, and run it again"


# mysql -h $DBServer $DBName -u $DBUser --password=$DBPass < $Backupfile
