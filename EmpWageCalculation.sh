#!/bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
numWorkingDays=0;
workingHours=0;
i=0;
totalSalary=0;
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

storeDailyWage () {
	workHr=$workHrs;
	wagePerDay[((i))]=$(($workHr*$empRatePerHr));
	totalSalary=$((${wagePerDay[i]}+$totalSalary));
	(( i++ ));
	echo $totalSalary;
}

showWageDetails () {
	for (( i=0; i<20; i++ ))
	do
		echo "Day " $i " Wage is : " ${wagePerDay[i]};
	done
	echo "Total Salary is : "$totalSalary;
}

WageMain () {
	while [ $numWorkingDays -lt 20  ]
do
	workHrs=$(getWorkHrs);
	workingHours=$(($workingHours+$workHrs));
	(( numWorkingDays++ ));
	storeDailyWage;
done

showWageDetails;

echo "Total Working Hours For the Month is : " $workingHours;
echo "Total salary(Another Way) :"$(($workingHours*$empRatePerHr));
}

WageMain;
