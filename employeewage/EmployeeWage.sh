#!/bin/bash -x

echo "Welcome"

#CONSTANT VARIABLES
ISPRESENT=1
SALARYPERHOUR=20
HOURPERDAY=8
ISPARTTIME=0
ISFULLTIME=1
WORKINGDAYS=20
TOTALHOURSINMONTH=100

#VARIABLES
totalEmpHour=0
totalWorkingDays=0

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

#SALARY OF A MONTH USING WHILE
while (( $totalEmpHour<$TOTALHOURSINMONTH && $totalWorkingDays<$WORKINGDAYS ))
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%2))
   case $empCheck in
   $ISFULLTIME)
      empHour=8
      ;;
   $ISPARTTIME)
      empHour=4
      ;;
   esac
   totalEmpHour=$(($totalEmpHour+$empHour))
done
totalSalary=$(($totalEmpHour*$SALARYPERHOUR))



