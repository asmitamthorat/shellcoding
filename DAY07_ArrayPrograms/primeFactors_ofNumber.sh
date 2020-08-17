# script to find prime factors
echo "enter an integer:"
read input

i=2
count=0
flag=0
for ((i;i<$input;))
do
        if [ `expr $input % $i` -eq 0 ]
        then
                factor=$i
                for ((j=2;j<=`expr $factor / 2`;))
                do
                        flag=0
                        if [ `expr $factor % $j` -eq 0 ]   #to check for prime number
                        then
                                flag=1
                                break
                        fi
                        j=`expr $j + 1`
                done
                if [ $flag -eq 0 ]
                then
                        array[((count++))]=$i    #Storing number into an array
                fi
        fi
        i=`expr $i + 1`
done
echo "prime factors of a $input are"
echo ${array[@]}			#displaying prime factors

