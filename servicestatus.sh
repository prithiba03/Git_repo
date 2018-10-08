#!/bin/bash

PS3="check the service status: "
options=("apache2_status" "nginx_status" "exit")

select opt in ${options[*]}
do
	case $opt in 
		"apache2_status")
			ps -ef | grep apache2 | grep -v grep
			#[ $?  -eq "0" ] && echo "process is running" || echo "process is not running"
			[ $?  -eq "0" ] && echo "the apache2 process is running" || echo $(/etc/init.d/apache2 start) ": the apache2 service is started"
			;;
		"nginx_status")
			ps -ef | grep nginx | grep -v grep
			[ $? -eq "0" ] && echo "the nginx process is running" || echo $(/etc/init.d/nginx start) ": the nginx service is started" 
			;;
		"exit")
			break
			;;
		*) echo "invalid option" ;;
	esac
done
