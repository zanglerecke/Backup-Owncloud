#!/bin/sh

#load config file
if [ -s "/etc/default/backup-owncloud" ] ; then
. /etc/default/backup-owncloud
fi

if ( [ "$OPTION" = "DATE" ] ); then

 echo "Create new backup with actual date"
 echo "Backupsource: "$Source
 echo "Backuptarget: "$Target

rsync -Aax $Source  ${Target}owncloud-dir-bkp_${DATE}/
# -A preserves ACLs
# -a archiv mode
# -x do not cross filesystem boundaries

mysqldump --lock-tables -h $DBServer $DBName -u $DBUser --password=$DBPass > ${Target}owncloud-sql-bkp_${DATE}.bak
echo "Backup Successfull!"
fi

if ( [ $OPTION = "update" ] ); then

 echo "Create new backup without actual date for use with dirvish"
 echo "Backupsource: "$Source
 echo "Backuptarget: "$Target

echo rsync -Aax $Source  ${Target}owncloud-dir-bkp/
echo mysqldump --lock-tables -h $DBServer $DBName -u $DBUser --password=$DBPass > ${Target}owncloud-sql-bkp.bak
echo "Backup Successfull!"
fi

