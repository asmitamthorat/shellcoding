#! /bin/bash
echo enter the number two calculate power of 2
read n
function powerOfTwo ( ) {
        for (( i=1;i<=n;i++))
        do
                echo `expr $((2**$i))`  #power of two calculation and printing
        done
}
echo "series is as given below"
powerOfTwo $n
