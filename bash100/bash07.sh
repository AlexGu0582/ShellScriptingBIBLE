#!/bin/bash
#Design a script to back up mysql database. First saving the backup file on the local server, then copying it to the remote server. Need to save one week of backup files on local server, and one month of backup files on remote server.
#Database name is discuz; the path of local server is /bak/mysql, the path of remotely server is 192.168.123.30::backup. Rsync service is runing on remotely server.

d1=`data +%w`
d2=`data +%d`


local_bakdir=/bak/mysql
remote_bakdir=192.168.123.30::backup

exec 1> /tmp/mysqlbak.log 2>/tmp/mysqlbak.err

echo "Mysql back up begin at `date`"
mysqldump uroot pxxx discz > $local_bakdir/discuz.sql.sql
rsync -az $local_bakdir/discuz.sql.$d1 $remote_bakdir/discuz.sql.$d2

echo "mysql backup end at `date`"
