#!/bin/bash
if [[ $1 -ge 50 ]]
then
echo You may go to the party.
elif [[ $2 == 'yes']]
then
echo You may go to the party but be back before midnight.
else
echo You may not go to the party.
fi


