#! /bin/bash
read -p "enter the number in the range 0-7 : " num
if [ $((num)) -eq 0 ]
then
        echo $num is sunday  #printing week days according to their order
elif [ $((num)) -eq 1 ]
then
        echo $num is monday
elif [ $((num)) -eq 2 ]
then
        echo $num is tuesday
elif [ $((num)) -eq 3 ]
then
        echo $num is thirsday
elif [ $((num)) -eq 4 ]
then
        echo $num is wednesday
elif [ $((num)) -eq 5 ]
then
        echo $num is friday
else
        echo $num is saturday
fi
