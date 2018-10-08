#!/bin/bash

k1=11

for k in 10 11 12
do
        if [ $k -gt $k1 ]; then

                echo "hello...!";
        else
                a=`expr $k + 1`

                echo "$a"

        fi
done


