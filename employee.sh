#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empRateHour=2000;
random=$(( RANDOM%3 ));
if [ $isFullTime -eq $random ]; then
	echo "present"
	empHrs=8;
elif [ $isPartTime -eq $random ]; then
	echo "part Time"
	empHrs=4;
else
	echo  "not present"
	empHrs=0;
fi

salary=$(( $empHrs*$empRateHour ))
echo "Salary of employee: " $salary
