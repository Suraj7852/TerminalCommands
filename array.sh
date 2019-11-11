#!/bin/bash -x

isFullTime=1;
isPartTime=2;
empRateHour=20;
arrayCount=1;
declare -A Wages

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
	workHr="$( dailyHrs $(( RANDOM%3 )) )"
	#TotalWorkHr=$(( $TotalWorkHr + $workHr ))
	wage="$( wages $(( $workHr )) )"
	TotalWage=$(( $TotalWage+$wage ))
	Wages["$counter"]=$wage
	#echo counter
done
Wages[TotalSalary]=$TotalWage

echo ${Wages[@]}
#echo $TotalWage
echo ${!Wages[@]}
#echo ${Wages[5]}
echo "TotalSalary" ${Wages[TotalSalary]}
