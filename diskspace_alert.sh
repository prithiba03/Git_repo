#!/bin/bash

function Alert() {
alert= df -h | awk '{ if ($5 == "100%") print "(warning) no space available: " $1 " at " $5 ; else  print "storage available: " $1 " at " $5 ; }' | mail -s "Alert func: disk out of space" prithiba.s@bambeeq.com
}

alert= df -h | awk '{ if ($5 == "100%") print "(warning) no space available: " $1 " at " $5 ; else  print "storage available: " $1 " at " $5 ; }'

echo $alert
Alert


