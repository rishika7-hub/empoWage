#!/bin/bash
echo "Welcome to Employee Wage Computation Problem"

isPresent=1
randomCheck=$(( RANDOM%2 ));
if [ $isPresent -eq $randomCheck ];
then
		echo "Employee is present"
else
		echo "Employee is not present"
fi

echo "calculate Daily employee wages"

wagePerHour=20
hoursPerDay=8

wagePerDay=$(( 20 * 8))

echo "daily employee wages = $wagePerDay"

#echo "Fulltime employee daily wages = $wagePerDay"

echo "calculate Part time Employee & wage"

partTimeHoursPerDay=4

PartTimeWagePerDay=$(( $wagePerHour * $partTimeHoursPerDay ))

echo "Part Time employee daily wages = $PartTimeWagePerDay"
