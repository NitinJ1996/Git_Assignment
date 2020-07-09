#!/bin/bash -x

empCheck=$((RANDOM%2))
if [ $empCheck -eq 1 ]
then
		echo "Employee Present"
else
		echo "Employee Absent"
fi
