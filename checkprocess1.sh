#!/bin/bash

var1=nginx
var=apache2
check_process() {
    #    echo "Checking if process $var exists..."
    	echo "checking if process exists...."

        if [[[ "$var" = "" ]  && return 0 ]]
		then 
			PROCESS_NUM=$(ps -ef | grep "$var" | grep -v "grep" | wc -l)
    			if [ $PROCESS_NUM -ge 1 ];
        	then
               		echo  "running"
       		 else
               		echo "not running"
      		 	fi
		elif [ [ "$var1" = "" ]  && return 0 ];
                then
                        PROCESS_NUM1=$(ps -ef | grep "$var1" | grep -v "grep" | wc -l)
                        if [ $PROCESS_NUM1 -ge 1 ];
                then
                        echo  "running"
                 else
                        echo "not running"
                        fi
	fi

}

check_process

