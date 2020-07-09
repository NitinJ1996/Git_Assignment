#!/bin/bash -x

wage_per_hour=15
work_days_per_month=20
working_days=0
total_work_hours=0

while [[ ($total_work_hours -le 100) || ($working_days -le $work_days_per_month) ]]
do
isfulltime=1
isparttime=2
empCheck=`echo $((RANDOM%3))`
   case $empCheck in
      $isfulltime)
            work_hours=8
            echo "Employee Present"
            total_work_hours=$((total_work_hours+work_hours));;
      $isparttime)
            work_hours=4
            echo "Employee works part time"
            total_work_hours=$((total_work_hours+work_hours)) ;;
      *)
            work_hours=0
            echo "Employee Absent"
            total_work_hours=$((total_work_hours+work_hours)) ;;
   esac
((working_days++))
done

echo "Employee Wage: "$((wage_per_hour*total_work_hours))
