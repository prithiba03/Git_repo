#!/bin/bash

function Alert
{
	output=$VAR | while read output
do
	echo $output
done
	if [[ $output == 100% ]];
	then
	       echo warning 
 #      else 
#		echo space avail 
	fi
}

	VAR= df -H | grep -vE '^Filesystem|cdrom' | awk '{ print $5 " " $1 }'
Alert $VAR


