#! /bin/bash -x
sum=0
function randomNumber( ){
        lowerLimit=1
        upperLimit=6
        DIFF=$(($upperLimit-$lowerLimit+1))
        R=$(($(($RANDOM%$DIFF))+$lowerLimit))           #generating random number for dice
        echo "$R"					#return random number
}
randomCount=2
for (( i=0 ; i<$randomCount ; i++ ))
do
        number=`randomNumber`
        sum=$(($sum+$number))
done
echo "sum :" $sum				#printing the sum






















