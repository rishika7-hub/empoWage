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

isFullTimeEmp=1;
isPartTimeEmp=2;

wagePerHour=20;
salary=0;
totalSalary=0;

empName=emp

echo "calculate wages"

read -p "enter the number of working days = " numDays

for (( days=1; days<=$numDays; days++ ));
do
	employeeCheck=$(( 1 + RANDOM % 2 ));
	case $employeeCheck in
		$isFullTimeEmp)
			empName=FullTimeEmployee
			empHrs=8;;
		$isPartTimeEmp)
			empName=PartTimeEmployee
			empHrs=4;;
	esac
	salary=$(( $empHrs * $wagePerHour ))
	echo "salary of $empName on the day $days is $salary"
	totalSalary=$(( $totalSalary + $salary ))
done

echo "total Salary = $totalSalary"

partTimeHoursPerDay=4

PartTimeWagePerDay=$(( $wagePerHour * $partTimeHoursPerDay ))

echo "Part Time employee daily wages = $PartTimeWagePerDay"

isFullTimeEmp=1;
isPartTimeEmp=2;

wagePerHour=20;
salary=0;
totalSalary=0;

empName=emp

echo "calculate wages for a Month"

#read -p "enter the number of working days = " numDays

numDays=20
for (( days=1; days<=$numDays; days++ ));
do
	employeeCheck=$(( 1 + RANDOM % 2 ));
	case $employeeCheck in
		$isFullTimeEmp)
			empName=FullTimeEmployee
			empHrs=8;;
		$isPartTimeEmp)
			empName=PartTimeEmployee
			empHrs=4;;
	esac
	salary=$(( $empHrs * $wagePerHour ))
	echo "salary of $empName on the day $days is $salary"
	echo -e
	totalSalary=$(( $totalSalary + $salary ))
done
