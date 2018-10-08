#!/bin/bash
#var1= df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }'

Alert () {

#       df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read var1;

       echo $var1
       var2=$(echo $var1 | awk '{ print $1}' | cut -d'%' -f1  )
       var3=$(echo $var1 | awk '{ print $2 }' )
       if [[ $var2 == 100 ]]; then
               echo "Running out of space"
       else
               echo "space availabale"
       fi


}
#Alert var1= df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' 
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read var1
do 
	Alert
done


