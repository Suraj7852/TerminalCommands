#!/bin/bash -x

isFullTime=1;
random=$(( RANDOM%2 ));
if [ $isFullTime -eq $random ]; then
	echo "present"
else
	echo  "not present"
fi
