#! /bin/bash  
counter=0
count=0
flag=0
i=0
smallestNumber=0
secondSmallestNumber=0
upperLimit=999
lowerLimit=100
function randomNumber( ){
        lowerLimit=100
        upperLimit=999
        DIFF=$(($upperLimit-$lowerLimit+1))
        R=$(($(($RANDOM%$DIFF))+$lowerLimit))           #generating random number
        echo "$R"
}


while [ $((count)) -lt 10 ]          #while condition for only 10 Random number
do
        if [ $((count)) -lt 9 ]
        then
                number[((counter++))]=$( randomNumber $upperLimit $lowerLimit )			#calling the function to generate 3 digit number
 
        else
                number[((counter))]=$( randomNumber $upperLimit $lowerLimit )
        fi
        count=$count+1
done
echo  "Array of Random Number:" ${number[@]}
echo  "Count of Numbers in the array:" ${#number[@]}
while [ $((i)) -lt ${#number[@]} ]      #while condition for number of execution
do
        if [ $((flag)) -eq 0 ]
        then
                smallestNumber=${number[i]}
                flag=1
        fi
        if [ ${number[i]} -lt $smallestNumber ] #comparison  bet smallest number & the next number
        then
                secondSmallestNumber=$smallestNumber
                smallestNumber=${number[i]}
        fi
        i=$((i))+1
done
echo "smallest number" $smallestNumber
echo "second smallest number" $secondSmallestNumber
