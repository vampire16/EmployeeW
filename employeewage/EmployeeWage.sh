#!/bin/bash -x

echo "Welcome"

#CONSTANT VARIABLES
ISPRESENT=1
SALARYPERHOUR=20
HOURPERDAY=8
ISPARTTIME=0
ISFULLTIME=1

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

#ADDING PART TIME EMPLOYEE WAGE USING CASEsxY
EmpCheck=$((RANDOM%2))
case  $EmpCheck in
$ISFULLTIME)
	EmpHour=8
	;;
$ISPARTTIME)
	EmpHour=4
	;;
esac


