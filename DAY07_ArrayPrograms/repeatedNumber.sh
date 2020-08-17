#! /bin/bash
function  getReverse( ) {
        rev=0
        while [ $num -gt 0 ]
        do
                rev=$(( $rev*10 ))
                rem=$(( $num%10 ))
                num=$(($num/10))
                rev=$(( $rev+$rem ))                  #getting reverse number
        done
        echo  "$rev"					#returning reverse number
}

function storeNum( ){
        i=0
        array[((i++))]=$num
        echo ${array[@]}
}

num=11
counter=0
while [ $((num)) -lt 100 ]		#considering number less than 100
do
        reverse=$(getReverse $num)    #check for the palindrome condition 
        if [ $num -eq $reverse ]
        then
             storeNum $num            #function call to store number in to an array
        fi
        num=$(($num+1))
done
