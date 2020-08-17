#! /bin/bash
# num to word conversion using if else condition
read -p "enter the number in the range 0-9 : " num
if [ $((num)) -eq 0 ]
then
        echo $num is zero
elif [ $((num)) -eq 1 ]
then
        echo $num is one
elif [ $((num)) -eq 2 ]
then
        echo $num is two
elif [ $((num)) -eq 3 ]
then
        echo $num is three
elif [ $((num)) -eq 4 ]
then
        echo $num is four
elif [ $((num)) -eq 5 ]
then
        echo $num is five
elif [ $((num)) -eq 6 ]
then
        echo $num is six
elif [ $((num)) -eq 7 ]
then
        echo $num is seven
elif [ $((num)) -eq 8 ]
then
        echo $num is eight
else
        echo $num is nine
fi
