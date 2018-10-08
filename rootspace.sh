#!/bin/bash

alert= df /root -m | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ if ($5 == "100%") print "space not avaliable for :" $1 " at " $6 " space :" $5 ; else print "space avaliable for :" $1 " at " $6 "space :" $5 ; }'
echo $alert 
