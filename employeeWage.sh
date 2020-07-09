#!/bin/bash -x

isfulltime=1
isparttime=2
empCheck=`echo $((RANDOM%3))`
wage_per_hour=15
case $empCheck in
        $isfulltime)
                work_hours=8
                echo "Employee Present";;
        $isparttime)
                work_hours=4
                echo "Employee works part time" ;;
        *)
                work_hours=0
                echo "Employee Absent" ;;
esac

echo "Employee Wage: "$((wage_per_hour*work_hours ))
