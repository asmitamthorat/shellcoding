function arithmaticOperation( ) {

        A=$(($number1 + $number2 * $number3))
        B=$(($number1 * $number2 + $number3))
        C=$(($number3 + $number1 / $number2))
        D=$(($number1 % $number2 + $number3))
        echo "$A $B $C $D"
}
read -p "enter the first number : " number1
read -p "enter the second number : " number2
read -p "enter the third number : " number3
result=$(arithmaticOperation $number1 $number2 $number3)   #calling the function
declare -A dict
result1=$( echo $result | awk '{print $1}' )		#to consider only first output 
dict["a+b*c"]=$result1					#storing value in the dictionary

result2=$( echo $result | awk '{print $2}' )
dict["a*b+c"]=$result2

result3=$( echo $result | awk '{print $3}' )
dict["c+a/b"]=$result3

result4=$( echo $result | awk '{print $4}' )
dict["a%b+c"]=$result4

echo "dictionary of keys and values"
for key in ${!dict[@]}; do			#printing the key and it's value
    echo ${key} ${dict[${key}]}
done

#Storing result in the array
counter=0
for i in ${dict[@]};
do
        #echo $i
        array[((counter++))]=$i
done
echo "array of the result"
#printing the array cotaining resutl
echo  ${array[@]}

#sorting the result in the Ascending Order
for (( i=0; i<4; i++ ))
do

    for(( j=0; j<4-i-1; j++ ))
    do

        if [ ${array[j]} -gt ${array[$((j+1))]} ]
        then
            # swap
            temp=${array[j]}
            array[$j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
        fi
    done
done

echo "sorting the result in the Ascending order :"
echo ${array[@]}


#sorting the  result in the descending Order
for (( i=0; i<4; i++ ))
do

    for(( j=0; j<4-i-1; j++ ))
    do

        if [ ${array[j]} -lt ${array[$((j+1))]} ]
        then
            # swap
            temp=${array[j]}
            array[$j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
        fi
    done
done

echo "sorting the result in the descending order :"
echo ${array[@]}
