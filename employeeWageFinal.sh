#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empRateHour=2000;
random=$(( RANDOM%3 ));
if [ $isFullTime -eq $random ]; then
	echo "present"
	empHrs=8;
fi

salary=$(( $empHrs*$empRateHour ))
