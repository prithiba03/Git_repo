#!/bin/bash

#BACKUP_DIR="/backup"
#MUSER="root"
#MPASS="evyavan21"
read -p "Mysql username: " MUSER
read -sp "password: " MPASS
#dbname="dbone"

database=$(mysql -u $MUSER -p$MPASS -e "show databases;" | grep -Ev "(Database|information_schema|performance_schema)")
#mysqldump --force --opt --user=$MUSER --password=$MPASS --databases $dbname | gzip $db_name.sql.gz
echo $database

for db in $database;
do
        mysqldump -u $MUSER -p$MPASS dbone > "database2.sql.gz"
done

