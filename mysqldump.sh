#!/bin/bash


MUSER="root"
MPASS="evyavan21"

dblist=$(mysql -u $MUSER -p$MPASS -e 'show databases')
#sed -i '/information_schema/d|/performance_schema/d' dblist
echo $dblist
#sed -i '/information_schema/d' dblist
#sed -i '/mysql/d' dblist
#sed -i '/performance_schema/d' dblist
#sed -i '/Database/d' dblist

for db in $dblist;
do 
#	if [[ "$db" != *Database* && "$db" != *schema* && "$db" != "mysql" && "$db" != *performance* && "$db" != "mysql" ]];
#	then
		mysqldump -u $MUSER -p$MPASS $db | gzip -cvfr $db > dbbackup.sql.gz && \
			printf '%s backed up\n' "$db"
#	fi
done

echo $dblist 
