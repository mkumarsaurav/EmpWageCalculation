#!/bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
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
echo "Salary of Employee is :"$salary;
