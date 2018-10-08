#!/bin/bash

function Alert()
{
 #awk '{ if ($5 == "100%") print "(warning) no space available: " $1 " at " $5 ; else  print "storage available: " $1 " at " $5 ; }' | mail -s "Alert func: disk out of space" prithiba.s@bambeeq.com
 VAR2=$($VAR | awk '{print $5}' | cut -d'%' -f1)
	if [ "$VAR2" == 100% ]
	then
		alt= df -h | awk '{ print "(warning) no space available: " $1 " at " $5 }'
		echo $alt
        elif [ "$VAR2" != 100% ]
	then
		alt= df -h | awk '{print "space available: " $1 " at " $5}'
		echo $alt
	fi
#alert= df -h | awk '{ if ($5 == "100%") print "(warning) no space available: " $1 " at " $5 ; else  print "storage available: " $1 " at " $5 ; }' | mail -s "Alert func: disk out of space" prithiba.s@bambeeq.com

}

Alert VAR1= df -h 



