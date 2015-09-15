#!/bin/sh

#load config file
if [ -s "/etc/default/Backup-Owncloud" ] ; then
. /etc/default/Backup-Owncloud
fi

mysqldump --lock-tables -h $DBServer $DBName -u $DBUser --password=$DBPass > ${Target}
#echo "Backup Successfull!"

