#!/bin/bash -x

isFullTime=1;
isPartTime=2;
empRateHour=20;
counter=0;

function dailyHrs() {
	case $1 in
		$isFullTime)
		empHrs=8;;
		$isPartTime)
		empHrs=4;;
		*)
		empHrs=0;;
	esac
	echo $empHrs
}

function wages() {
	TotalWage=$(( $1*$empRateHour ))
	echo $TotalWage
}

for (( counter=1; counter<=20; counter++ ))
do
	result="$( dailyHrs $(( RANDOM%3 )) )"
	TotalWorkHr=$(( $TotalWorkHr + $result ))
	wage="$( wages $(( $TotalWorkHr )) )"
	TotalWage=$(( $TotalWage+$wage ))
	Wages[(( counter++ ))]=$wage
done
Wages[(( counter++ ))]=$TotalWage

echo ${Wages[@]}
echo $TotalWage
