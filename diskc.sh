#!/bin/bash

function Alert()
{
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }'
#$usep
#$partition
if [[ $usep == 100 ]]; then
echo "Running out of space"
else
echo "space availabale"
fi
}

Alert usep=$(echo $output | awk '{ print $1}' | cut -d'%' -f1  )
Alert partition=$(echo $output | awk '{ print $2 }' )
#Alert $usep $partition
