#!/bin/bash

var=apache2
check_process() {
        echo "Checking if process $var exists..."
        [ "$var" = "" ]  && return 0
        PROCESS_NUM=$(ps -ef | grep "$var" | grep -v "grep" | wc -l)
        if [ $PROCESS_NUM -ge 1 ];
        then
               echo  "running"
        else
               echo "not running"
        fi
}

check_process

