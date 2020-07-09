#!/bin/bash -x

#constants
wage_per_hour=15
work_days_per_month=20

#variables
working_days=0
total_work_hours=0

#function to calculate workhours
function empWorkHours(){
   isfulltime=1
   isparttime=2
     case $1 in
            $isfulltime)
                work_hours=8 ;;
            $isparttime)
                work_hours=4 ;;
            *)
                work_hours=0 ;;
     esac
   echo $work_hours
}

#condition to check for total work hours or work days
while [[ ($total_work_hours -le 100) || ($working_days -le $work_days_per_month) ]]
do
      work_hours_per_day=$( empWorkHours $((RANDOM%3)) )
      total_work_hours=$((total_work_hours+work_hours_per_day))
      ((working_days++))
done

echo "Employee Wage: "$((wage_per_hour*total_work_hours))
