#!/bin/bash -x

echo "Welcome"

#CONSTANT VARIABLES
ISPRESENT=1

#RANDOM FUNCTION
randomCheck=$((RANDOM%2))

#CHECHING EMPLOYEE IS PRESENT OR ABSCENT
if (( $randomCheck == $ISPRESENT ))
then
	echo "Employee is present"
else
	echo "Employee is abscent"
fi
