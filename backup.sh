#!/bin/bash

read -p "Mysql username: " MUSER
read -sp "password: " MPASS

database=$(mysql -u $MUSER -p$MPASS -e "show databases;" | grep -Ev "(Database|information_schema|performance_schema)")
#ls -1 $database

echo "*********************************************"
echo $database
echo "*********************************************"

PS3='Please enter your choice : '
options=("dbone" "dbtwo" "mysql" "phpmyadmin" "exit")
options1=("000-default.conf" "ports.conf" "exit")
options2=("apache2_page" "nginx_page" "exit")

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


select opt1 in "${options1[@]}"
do 
	case $opt1 in
		"000-default.conf")
			gzip -c /etc/apache2/sites-available/000-default.conf > /etc/apache2/backup1.gz | mutt -s "backup1 conf" prithiba.s@bambeeq.com -a /etc/apache2/backup1.gz
			;;
		"ports.conf")
			gzip -c /etc/apache2/ports.conf > /etc/apache2/backup2.gz |  mutt -s "backup2 conf" prithiba.s@bambeeq.com -a /etc/apache2/backup2.gz
                        ;;
		"exit")
			break
			;;
		*) echo "invalid" ;;
	esac
done

select opt2 in "${options2[@]}"
do
        case $opt2 in
                "apache2_page")
                        gzip -c /var/www/html/index.html > /var/www/html1.gz | mutt -s "backup1 html" prithiba.s@bambeeq.com -a /var/www/html1.gz
                        ;;
                "nginx_page")
                        gzip -c /var/www/html/index.nginx-debian.html > /var/www/html2.gz |  mutt -s "backup2 html" prithiba.s@bambeeq.com -a /var/www/html2.gz
                        ;;
                "exit")
                        break
                        ;;
                *) echo "invalid" ;;
        esac
done

