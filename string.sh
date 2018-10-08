#!/bin/bash

read -p "var1: " VAR1
if [[ "$VAR1" == '^[0-9]+([.][0-9]+)?$' ]]
then	
	echo "the given varialble is a strng"
else 
	echo "it is a num"

fi
