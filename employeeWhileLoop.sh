#!/bin/bash -x

valid=true
isFullTime=1;
isPartTime=2;
while [ $valid ]
do
	random=$(( RANDOM%3 ));
	case $random in
		$isFullTime)
		empHrs=8;;
		$isPartTime)
		empHrs=4;;
		*)
		empHrs=0;;
	esac
	TotalHrs=$(( $TotalHrs+$empHrs ))
	if [ $TotalHrs -le 50 ]
	then
		break
	fi
done
