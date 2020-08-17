#! /bin/bash

read -p "enter the size of an array : " size
echo "enter the numbers"

for (( i=0 ; i<$size; i++ ))
do
        read number[i]							#input integers for array
done

echo "Array" ${number[@]}	                 			# printing the arrray
for (( i=0; i<$((size-2));i++ ))
do
        for (( j=$((i+1)); j<$((size-1)); j++ ))
        do
                for (( k=$((j+1)); j<$((size)); j++ ))
                do
                        if [[ $((${number[i]}+${number[j]}+${number[k]})) -eq 0 ]]
                        then
                                echo "pair"
                                echo ${number[i]}				# first number
                                echo ${number[j]}				#second number
                                echo ${number[k]}				#third number
                        fi
                done
        done
done
