#! /bin/bash
echo enter a number:
read num
flag=0
temp=$num
function prime ( ){
        for(( i=2; i<=($num/2); i++ ))
        do
                if [  $((num%i)) -eq 0 ]
                then
                        flag=1
                        break
                fi
        done
        echo "$flag"
}

function palindrome ( ){
        while [ $num -gt 0 ]
        do
                s=$(( $num % 10 ))
                num=$(( $num / 10 ))
                rev=$( echo ${rev}${s} )
        done
        echo "$rev"		#getting reverse of original number
}


ckeck=$(prime $num)		#calling the function to check for prime

if [ $ckeck -eq 0 ]
then
        echo "number is prime number"
        check2=$(palindrome $num)			#check for palindrome 
        if [ $temp -eq $check2 ]
        then
            echo "Number is palindrome"
            num=$check2
            echo "checking whether palindrome is also prime or not"
            check3=$(prime $num)
            if [ $check3 -eq 0 ]
            then
                echo "palindrome is also prime number"
            fi
        else
            echo "Number is NOT palindrome"

        fi

else
        echo "number is not prime number"

fi
