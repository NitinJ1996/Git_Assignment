#!/bin/bash -x

wage_per_hour=20
empCheck=$((RANDOM%3))
if [ $empCheck -eq 1 ]
then
      echo "Employee Works full day"
      work_hours=8
elif [ $empCheck -eq 2 ]
then
      echo "Employee Works Part time"
      work_hours=4
else
      echo "Employee Absent"
      work_hours=0
fi

echo "Employee Wage: "$((wage_per_hour*work_hours))
