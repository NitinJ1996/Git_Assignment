#!/bin/bash -x

wage_per_hour=20
empCheck=$((RANDOM%3))
if [ $empCheck -eq 1 ]
then
      echo "Employee Works full day"
      workHours=8
else
      echo "Employee Absent"
      workHours=0
fi

echo "Employee Wage: "$((wage_per_hour*workHours))
