#!/bin/bash

PS3="check the service status: "
options1=("apache2_status" "nginx_status" "exit")

select opt1 in ${options1[*]}
do
        case $opt1 in
                "apache2_status")
                        ps -ef | grep apache2 | grep -v grep
                        #[ $?  -eq "0" ] && echo "process is running" || echo "process is not running"
                        [ $?  -eq "0" ] && echo "the apache2 process is running" || echo $(mail -s "apache2 stopped" prithiba.s@bambeeq.com <<< "the apache2 service is stopped")
                        ;;
                "nginx_status")
                        ps -ef | grep nginx | grep -v grep
                        [ $? -eq "0" ] && echo "the nginx process is running" || echo $(mail -s "nginx stopped" prithiba.s@bambeeq.com <<< "the nginx service is stopped")
                        ;;
                "exit")
                        break
                        ;;
                *) echo "invalid option" ;;
        esac
done


