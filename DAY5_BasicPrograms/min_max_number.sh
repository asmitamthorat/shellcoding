#! /bin/bash
sum=0
maxNumber=0
minNumber=0
flag=0
function randomNumber( ){
        lowerLimit=100
        upperLimit=999
        DIFF=$(($upperLimit-$lowerLimit+1))
        R=$(($(($RANDOM%$DIFF))+$lowerLimit))           #generating random number
        echo "$R"
}
randomCount=5
for (( i=0 ; i<$randomCount ; i++ ))
do
        number=`randomNumber`                   #calling the function
        echo "random number is:" $number
        if [ $((flag)) -eq 0 ]
        then
                minNumber=$number
                flag=1
        elif [ $number -lt $minNumber ]         #check for minimun
        then
                minNumber=$number
        elif [ $number -gt $maxNumber ]         #check for maximum
        then
                maxNumber=$number
        fi
done
echo "mininmum number:" $minNumber		#printing minimum number
echo "maximun number:" $maxNumber		#printing maximum number
