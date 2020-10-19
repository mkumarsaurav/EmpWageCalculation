#!/bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
numWorkingDays=0;
workingHours=0;

while [ $numWorkingDays -lt 20 -a $workingHours -lt 100 ]
do
empCheck=$((RANDOM%3));
case $empCheck in
	$isFullTime)
		empHrs=16;;
	$isPartTime)
		empHrs=8;;
	*)
	empHrs=0;;
esac
workingHours=$(($workingHours+$empHrs));
(( numWorkingDays++ ));
salary=$(($empHrs*$empRatePerHr));
totalSalary=$(($totalSalary+$salary));
done
echo "Salary for a Month is : " $totalSalary;
