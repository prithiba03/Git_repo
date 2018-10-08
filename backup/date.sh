#!/bin/bash
a=$(date --date="7 days ago" +%d/%m/%y)
b=$(date --date="19 days ago" +%d/%m/%y)
c=$(date --date="1 year ago" +%d/%m/%y)
echo $a 
echo $b
echo $c
~       


for kk in start#### * END####  ## * is used to show what are the files available in a current folder
do
        echo " $kk "

done

if [ -n "$1" ]              # check  a 1st feiled is non-zero 

then

        echo "Parameter #1 is $1"  # Need quotes to escape #
fi

if [ -n "$2" ]

then

        echo "Parameter #2 is $2"
fi

if [ -z "${3}" ]  # check  a 3rd feiled is zero

then

        echo "Parameter #3 is ${3}"
fi
~
