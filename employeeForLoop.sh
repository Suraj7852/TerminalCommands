#!/bin/bash -x
isFullTime=1;
isPartTime=2;
empRateHour=20;
for (( counter=1; counter<=20; counter++ ))
do
	employeechk=$(( RANDOM%3 ));
	case $employeechk in
		$isFullTime)
		empHrs=8;;
		$isPartTime)
		empHrs=4;;
		*)
		empHrs=0;;
	esac
	salary=$(( $empHrs*$empRateHour ))
	pay=$(( $pay+$salary ))
done
printf "$pay"
printf "\n"

