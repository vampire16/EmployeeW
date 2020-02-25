#!/bin/bash -x

echo "Welcome"

#CONSTANT VARIABLES
ISPRESENT=1
SALARYPERHOUR=20
HOURPERDAY=8
ISPARTTIME=0
ISFULLTIME=1
WORKINGDAYS=20

#RANDOM FUNCTION
randomCheck=$((RANDOM%2))

#CHECHING EMPLOYEE IS PRESENT OR ABSCENT
if (( $randomCheck == $ISPRESENT ))
then
	echo "Employee is present"
else
	echo "Employee is abscent"
fi

#SALARY OF EMPLOYEE 
if (( $randomCheck == $ISPRESENT ))
then
	salary=$(( $SALARYPERHOUR*$HOURPERDAY ))
else
	salary=0
fi

#ADDING PART TIME EMPLOYEE WAGE USING CASE
empCheck=$((RANDOM%2))
case  $empCheck in
$ISFULLTIME)
	empHour=8
	;;
$ISPARTTIME)
	empHour=4
	;;
esac

#SALARY OF A MONTH
for (( day=1; day<=$WORKINGDAYS; day++ ))
do
	empCheck=$((RANDOM%2))
	case $empCheck in
	$ISFULLTIME)
		empHour=8
		;;
	$ISPARTTIME)
		empHour=4
		;;
	esac
	salary=$(($empHour*$SALARYPERHOUR))
	totalSalary=$(($totalSalary+$salary))
done




