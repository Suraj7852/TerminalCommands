#!/bin/bash -x
# comment added by Prayas
isPartTime=1;
isFullTime=2;
empRateHour=2000;

randomChk=$(( RANDOM%3 ));
if [ $isFullTime -eq $randomChk ]; then
	empHrs=8;
elif [ $isPartTime -eq $randomChk ]; then
	empHrs=4;
else
	empHrs=0;
fi

salary=$(( $empHrs*$empRateHour ))
