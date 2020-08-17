#! /bin/bash

#declearing the dictionary
declare -A dictionary
declare -A janDictionary
declare -A febDictionary
declare -A marchDictionary
declare -A aprilDictionary
declare -A mayDictionary

declare -A junDictionary
declare -A julyDictionary
declare -A augDictionary
declare -A septDictionary
declare -A octDictionary
declare -A novDictionary
declare -A decDictionary
counter=0				#initializing counter for dictionary
function randomNumber( ){
        DIFF=$(($2-$1+1))
        R=$(($(($RANDOM%$DIFF))+$1))           #generating random number
        echo "$R"
}
monthLowerLimit=1
monthUpperLimit=12
yearUpperLimit=93
yearLowerLimit=92

# Storing birth month of 50 individuals in the dictionary
while [ $((counter)) -lt 50 ]
do
	month=$(randomNumber $monthLowerLimit  $monthUpperLimit
	year=$(randomNumber $yearLowerLimit $yearUpperLimit)
	#generating the birthmonth with year
	birthMonth="$month""/""$year"

	dictionary[$counter]=$birthMonth
	if [ $((month)) -eq 1 ]
	then
		janDictionary[$counter]=$birthMonth
	elif [ $((month)) -eq 2 ]
        then
                febDictionary[$counter]=$birthMonth
      	elif [ $((month)) -eq 3 ]
        then
                marchDictionary[$counter]=$birthMonth
        elif [ $((month)) -eq 4 ]
        then
               aprilDictionary[$counter]=$birthMonth
       	elif [ $((month)) -eq 5 ]
        then
                mayDictionary[$counter]=$birthMonth
	elif [ $((month)) -eq 6 ]
        then
                juneDictionary[$counter]=$birthMonth
        elif [ $((month)) -eq 7 ]
        then
               julyDictionary[$counter]=$birthMonth
        elif [ $((month)) -eq 8 ]
        then
                augDictionary[$counter]=$birthMonth
	elif [ $((month)) -eq 9 ]
        then
                septDictionary[$counter]=$birthMonth
        elif [ $((month)) -eq 10 ]
        then
               octDictionary[$counter]=$birthMonth
        elif [ $((month)) -eq 11 ]
        then
                novDictionary[$counter]=$birthMonth
	else
		decDictionary[$counter]=$birthMonth
        fi
	counter=$(($counter+1))
done

#Sorting the dictionary monthwise
echo "people born in january"
for key in ${!janDictionary[@]}			#printing the dictionary
do
    echo ${key} ${janDictionary[${key}]}
done

echo "people born in february"
for key in ${!febDictionary[@]}
do
    echo ${key} ${febDictionary[${key}]}
done

echo "people born in march"
for key in ${!marchDictionary[@]}
do
    echo ${key} ${marchDictionary[${key}]}
done
echo "people born in april"
for key in ${!aprilDictionary[@]}
do
    echo ${key} ${aprilDictionary[${key}]}
done
echo "people born in may"
for key in ${!mayDictionary[@]}
do
    echo ${key} ${mayDictionary[${key}]}
done
echo "people born in june"
for key in ${!juneDictionary[@]}
do
    echo ${key} ${juneDictionary[${key}]}
done
echo "people born in july"
for key in ${!julyDictionary[@]}
do
    echo ${key} ${julyDictionary[${key}]}
done
echo "people born in august"
for key in ${!augDictionary[@]}
do
    echo ${key} ${augDictionary[${key}]}
done
echo "people born in september"
for key in ${!septDictionary[@]}
do
    echo ${key} ${septDictionary[${key}]}
done
echo "people born in october"
for key in ${!octDictionary[@]}
do
    echo ${key} ${octDictionary[${key}]}
done
echo "people born in november"
for key in ${!novDictionary[@]}
do
    echo ${key} ${novDictionary[${key}]}
done
echo "people born in december"
for key in ${!decDictionary[@]}
do
    echo ${key} ${decDictionary[${key}]}
done
