#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empRateHour=2000;
random=$(( RANDOM%3 ));
if [ $isFullTime -eq $random ]; then
	echo "hello"
	empHrs=8;
elif [ $isPartTime -eq $random ]; then
	empHrs=4;
else
	empHrs=0;
fi

salary=$(( $empHrs*$empRateHour ))
