#!/bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
numWorkingDays=0;
workingHours=0;
getWorkHrs () {
	empCheck=$((RANDOM%3));
case $empCheck in
	$isFullTime)
		empHrs=16;;
	$isPartTime)
		empHrs=8;;
	*)
	empHrs=0;;
esac
echo $empHrs;
}
WageMain () {
	while [ $numWorkingDays -lt 20  ]
do
	workHrs=$(getWorkHrs);
	workingHours=$(($workingHours+$workHrs));
	(( numWorkingDays++ ));
done
echo "Total Working Hours For the Month is : " $workingHours;
}

WageMain;
