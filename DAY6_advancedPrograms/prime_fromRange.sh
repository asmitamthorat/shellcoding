#! /bin/bash

echo enter a range      #taking a range
read range
echo "prime number in given range"
echo 2
j=3
while test $j -le $range
do
        i=2
        x=`expr $j - 1`
        while test $i -le $x
        do
                if [ `expr $j % $i` -ne 0 ]
                then
                        i=`expr $i + 1`
                else
                        break
                fi
        done
        if [ $i -eq $j ]
        then
                echo $j				#printing the prime from range
        fi
        j=`expr $j + 1`
done

