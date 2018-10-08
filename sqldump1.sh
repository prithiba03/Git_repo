#!/bin/bash
timestamp=$(date +"%F")
backup_path="/home/prithiba/dumps/$TIMESTAMP"
mysql_user="root"
mysql_password="evyavan21"
db="dbtwo"
mysql --user=$mysql_user --password=$mysql_password  --db=$db | grep -Ev "(Database|information_schema|performance_schema)"

mysqldump --force --opt --user=$mysql_user --password=$mysql_password --databases $db | gzip > "$backup_path/$db.zip"
                                                                                                          
