#!/bin/bash -x

function myfunc() {
	echo $1
}

result="$( myfunc $(( RANDOM%3 )) )"
isFullTime=1;
isPartTime=2;
empRateHrs=20;
valid=true
for (( counter=1; counter<=20; counter++ ))
do
	result=$( myfunc $(( RANDOM%3 )) )
	case $result in
		$isFullTime)
		empHrs=8;;
		$isPartTime)
		empHrs=4;;
		*)
		empHrs=0;;
	esac
	TotalHrs=$(( $empHrs+$empRateHrs ))
done

