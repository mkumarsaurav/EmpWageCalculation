#!/bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
numWorkingDays=20;
for (( day=1; day<=$numWorkingDays; day++ ))
do
EmpCheck=$((RANDOM%3));
case $EmpCheck in
	$isFullTime)
		empHrs=16;;
	$isPartTime)
		empHrs=8;;
	*)
	empHrs=0;;
esac
salary=$(($empHrs*$empRatePerHr));
totalSalary=$(($totalSalary+$salary));
done
echo "Salary for a Month is : " $totalSalary;
