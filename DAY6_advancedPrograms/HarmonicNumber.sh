#! /bin/bash
echo "enter a number : "
read num
hn=0
echo "Hormonic series is as given"
for (( i=1; i<$(($num+1)); i++ ))
do
        hn=$hn+1/$i
done
echo $hn			#printing the  series
