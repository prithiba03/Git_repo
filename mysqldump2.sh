#!/bin/bash

read -p "Mysql username: " MUSER
read -sp "password: " MPASS

database=$(mysql -u $MUSER -p$MPASS -e "show databases;" | grep -Ev "(Database|information_schema|performance_schema)")
#ls -1 $database

echo "*********************************************"
echo $database
echo "*********************************************"

PS3='Please enter your choice: '
options=("dbone" "dbtwo" "mysql" "phpmyadmin" "exit")

select opt in "${options[@]}"
do 
	case $opt in
		"dbone")
			mysqldump -u $MUSER -p$MPASS  dbone > "dbonebackup.sql.gz" | mutt -s "mysql_dbonebackup" prithiba.s@bambeeq.com -a dbonebackup.sql.gz 
			;;
		"dbtwo")
			mysqldump -u $MUSER -p$MPASS  dbtwo > "dbtwobackup.sql.gz" | mutt -s "mysql_dbtwobackup" prithiba.s@bambeeq.com -a dbtwobackup.sql.gz
			;;
		"mysql")
			mysqldump -u $MUSER -p$MPASS  mysql > "mysqlbackup.sql.gz" | mutt -s "mysql_mysqlbackup" prithiba.s@bambeeq.com -a mysqlbackup.sql.gz
			;;
		"phpmyadmin")
			mysqldump -u $MUSER -p$MPASS  phpmyadmin > "phpmyadminbackup.sql.gz" | mutt -s "mysql_phpmyadminbackup" prithiba.s@bambeeq.com -a phpmyadminbackup.sql.gz
			;;
		"exit")
			break
			;;
		*) echo "Invalid option" ;;
	esac
done
