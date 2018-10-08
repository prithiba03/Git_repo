#!/bin/bash
#used the user variable to declare the user name of mysql
user="root"
#using password variable to declare the passwd fr the particular user
password="evyavan21"
#the host variable is used to declare tat which host im using
host="localhost"
#db-->means database;the db_name variable is used to declare which db is want to select in  the particular user
db_name="dbone"
#furnworld is used to represnt my created table name in the particular user then it will take a dump of furnworld table
dump="furnworld"
#the backup_path is fr my reference ill make a dir fr storing my backups of mysql
backup_path="/home/prithiba/dumps"
#finally this is used to show the informations about the table lik structure etc..
#mysql --user=$user --password=$password --db_name=$db_name | grep -Ev "(Database|information_schema|performance_schema)"
#this command line is used to login in mysql and to grep the particular database the particular user;force-->continue even if an sql error occurs;opt-->optimal
mysqldump --force --opt --user=$user --password=$password --databases $db_name $backup_path/$db_name.sql
#delete files older than particular period of date fr sample ill puted 5 days before files to be delete
#find $backup_path/* -mtime +5 -exec rm {}\;
#i dnt need to delete my file so ill commanded the line to not perfrm
subjec="mysql dump"
body="hi this is prithi"
from="prithiba.s@gmail.com"
to="prithiba.s@bambeeq.com"
echo -e "subject:${intro}\n${body}" | sendmail -f "${from}" -t "${to}"


