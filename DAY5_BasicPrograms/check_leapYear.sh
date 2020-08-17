#! /bin/bash -x
read -p "Enter the year" year

function leapYear ( ) {
        if [  $(($year%4)) -eq 0 -a $(($year%100)) -eq 0 ]
        then
                echo $year is a leap year.
        else
                echo $year is not leap year
        fi
}

leapYear $year  #calling a function leapYear
