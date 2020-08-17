#! /bin/bash
sum=0
function randomNumber( ){
        lowerLimit=10
        upperLimit=99
        DIFF=$(($upperLimit-$lowerLimit+1))
        R=$(($(($RANDOM%$DIFF))+$lowerLimit))           #generating random number of two digit
        echo "$R"
}
randomCount=5
for (( i=0 ; i<$randomCount ; i++ ))
do
        number=`randomNumber`
        sum=$(($sum+$number))
done
echo "sum :" $sum				#printing sum 
echo "average :"				#printing average
printf %.3f "$(( $sum*10**3/$randomCount))e-3"	#calculating average
