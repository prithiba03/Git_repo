#!/bin/bash
 
#var= netstat -antlp | grep apache | grep LISTEN 
#var1=$(echo start the service using systemctl start apache2  >> mail -s "apache service is stopped" prithiba.s@bambeeq.com )
#var= netstat -antlp | grep apache | awk '{if ($6=="LISTEN" && $7=="apache") print  $1, $3, $6, $7 " : the apache service is running"; else if ($6!="LISTEN" && $7!= "apache") print "start the service" }'

#var= netstat -anptl | grep apache2 | awk '{if ($(grep LISTEN)) print  $4, $6, $7 " : the apache service is running"; else print "service is not running"; }'
#echo $var

#var= netstat -antlp | grep apache2
if [[ $(($(netstat -antlp | grep apache2 ) && wc -l )> 0) ]];
then
	echo "service is running"
else
	echo "it is stopped"
fi



