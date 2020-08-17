#! /bin/bash
echo enter a number:
read number

function prime ( ){
        for(( i=2; i<=($number/2); i++ ))
        do
                if [  $((number%i)) -eq 0 ]
                then
                        flag=1
                        break
                fi
        done
        echo "$flag"
}

flag=$(prime $number)						#function call to check for prime

if [ $((flag)) -eq 0 ]
then
	echo "number is prime number"

else
	echo "number is not prime number"
fi
