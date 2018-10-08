#!/bin/bash

read -p "Mysql username: " MUSER
read -sp "password: " MPASS

database=$(mysql -u $MUSER -p$MPASS -e "show databases;" | grep -Ev "(Database|information_schema|performance_schema)")
#ls -1 $database

i=1
echo "*********************************************"
echo $database
echo "*********************************************"

for db in $database
do
        echo "$((i++)): $db" 
done

read -p "choose any database: " ch

for ch in $i
do
read -p "choose the name to be saved as: " DBNAME
mysqldump -u $MUSER -p$MPASS $ch > /root/shellscript/backup/$DBNAME.sql.gz
done

