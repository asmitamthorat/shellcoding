#! /bin/bash
function randomNumber( ){
        DIV=$(( $upperLimit+1 ))
        number=$(($RANDOM%$DIV))
        echo "$number"
}
upperLimit=6
value=0
declare -A dict
j=0
oneCount=0
twoCount=0
threeCount=0
fourCount=0
fiveCount=0
sixCount=0
while [ $((oneCount)) -lt 10 -a $((twoCount)) -lt 10 -a $((threeCount)) -lt 10 -a $((fourCount)) -lt 10 -a $((fiveCount)) -lt 10 -a $((sixCount)) -lt 10 ]
do


                value=$(randomNumber $upperLimit)
                if [ $value -eq 1 ]
                then
                        oneCount=$(($oneCount+1))	#calculating the count
                        dict["oneCount"]=$oneCount	#storing count in the dictionary

                 elif [ $value -eq 2 ]
                then
                        twoCount=$(($twoCount+1))
                        dict["twoCount"]=$twoCount
                 elif [ $value -eq 3 ]
                then
                        threeCount=$(($threeCount+1))
                        dict["threeCount"]=$threeCount


                 elif [ $value -eq 4 ]
                then
                        fourCount=$(($fourCount+1))
                        dict["fourCount"]=$fourCount


                elif [ $value -eq 5 ]
                then
                        fiveCount=$(($fiveCount+1))
                        dict["fiveCount"]=$fiveCount
else

                        sixCount=$(($sixCount+1))
                        dict["sixCount"]=$sixCount

                fi


        j=$(($j+1))
done
echo "keys :"
echo ${!dict[@]}
echo "values: "
echo ${dict[@]}

min=0
counter=0
for i in ${dict[@]};
do
        #echo $i
        array[((counter++))]=$i
done
echo "dictionary representation:"
for key in ${!dict[@]}; do
    echo ${key} ${dict[${key}]}
done


a=0
m=0
flag=0
while [ $((a)) -lt ${#array[@]} ]      #while condition for number of execution
do
        if [ $((flag)) -eq 0 ]
        then
                smallestNumber=${array[m]}
                flag=1
        fi
        if [ ${array[m]} -lt $smallestNumber ] #comparison  bet smallest number & the next number
        then
                smallestNumber=${array[m]}
        fi
        a=$(($a+1))
        m=$(($m+1))
done
echo "minimun count value:" $smallestNumber		#printing the smallest count value
echo "maximun count value:  10"
