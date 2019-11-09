#!/bin/bash -x
isFullTime=1;
isPartTime=2;
empRateHour=2000;
random=$(( RANDOM%3 ));
case $random in
	$isFullTime)
		empHrs=8;;
	$isPartTime)
		empHrs=4;;
	*)
		empHrs=0;;
esac


salary=$(( $empHrs*$empRateHour ))
