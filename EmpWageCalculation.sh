#!/bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
EmpCheck=$((RANDOM%3));

if [ $isFullTime -eq $EmpCheck ];
then
	empHrs=16;
elif [ $isPartTime -eq $EmpCheck ];
then
	empHrs=8;
else
	empHrs=0;
fi

salary=$(($empHrs*$empRatePerHr));
echo "Salary of Employee is :"$salary;
