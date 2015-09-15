#!/bin/sh

#load config file
if [ -s "/etc/default/Backup-Owncloud" ] ; then
. /etc/default/Backup-Owncloud
fi

rm ${Target}
