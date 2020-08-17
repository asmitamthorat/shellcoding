#! /bin/bash
echo enter a number:
read num
fact=1
function factorial ( ) {
        for(( i=1; i<=num; i++ ))
        do
                fact=` expr $fact \* $i`       #factor calculation
        done
}

factorial $num				#function call to compute the factors	
echo factorial of a number is $fact
