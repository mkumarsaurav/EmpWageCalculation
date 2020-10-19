#!/bin/bash -x
isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ];
then
   empRatePerHr=20;
   empHrs=8;
   salary=$(($empHrs*$empRatePerHr));
   echo "Salary of the Employee : " $salary;
else
	salary=0;
	echo "Salary of the Employee : " $salary;
fi
