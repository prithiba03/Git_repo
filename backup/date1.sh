#!/bin/bash

date
pwd

for dp in $date $pwd

do
        echo "$dp"

done

kitrak_k () {
        echo "Hello...Mr.$1"
        return 100135
}

kitrak_k karthik

kit=$? # '?' is used to capture the return value


echo "Your Employement id is : $kit"

