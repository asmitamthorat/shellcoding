#! /bin/bash
counter=0
count=0
i=0
smallestNumber=0
secondSmallestNumber=0
upperLimit=999
lowerLimit=100
function randomNumber( ){
        DIFF=$(($upperLimit-$lowerLimit+1))
        R=$(($(($RANDOM%$DIFF))+$lowerLimit))           #generating random number
        echo "$R"
}



while [ $((count)) -lt 10 ]          #while condition for generate 10 Random number
do
        if [ $((count)) -lt 9 ]
        then
                array[((counter++))]=$(randomNumber $upperLimit $lowerLimit)		#calling function randomNumber to generate 3 digit number
        else
                array[((counter))]=$(randomNumber $upperLimit $lowerLimit)
        fi
        count=$count+1
done
echo  "Original array:" ${array[@]}
echo  "Count of Numbers in the array:" ${#array[@]}
# Performing Bubble sort
for ((i = 0; i<10; i++))
do

    for((j = 0; j<10-i-1; j++))
    do

        if [ ${array[j]} -gt ${array[$((j+1))]} ]
        then
            # swap
            temp=${array[j]}					#temp variable to store the number
            array[$j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${array[*]}						#printing sorted array

echo "Second largest number:" ${array[8]}
echo "Second smallest number:" ${array[1]}
