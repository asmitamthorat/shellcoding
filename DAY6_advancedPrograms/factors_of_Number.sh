#! /bin/bash
read -p "enter the number" num
echo "factors are the following"
for (( i=2; i<$num; i++))
do
        if [ $((num%i)) -eq 0 ]
        then
                echo $i
        fi
done
