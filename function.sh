#!/bin/bash -x

isFullTime=1;
isPartTime=2;
empRateHrs=20;
function myfunc() {
	echo $1
	case $1 in
		$isFullTime)
		empHrs=8;;
		$isPartTime)
		empHrs=4;;
		*)
		empHrs=0;;
	esac
TotalHrs=$(( $empHrs+$empRateHrs ))
}

for (( counter=1; counter<=20; counter++ ))
do
	result=$( myfunc $(( RANDOM%3 )) )
done

