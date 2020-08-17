for(( i=1 ;i<=100; i++ ))
do
        a[i]=$i
done
echo “Enter the magic number in range 1-100:”
read s
l=1
c=0
n=100
u=$(($n-1))

while [ $l -le $u ]
do
        mid=$(((( $l+$u ))/2 ))  			#calculating mid
        if [ $s -eq ${a[$mid]} ]							
        then
                c=1
                break
        elif [ $s -lt ${a[$mid]} ]			#comparing mid and number
        then
                u=$(($mid-1))
        else
                l=$(($mid+1))
        fi
done
if [ $c -eq 1 ]
then
        echo “Element is $(($mid))”			#printing the element
else
        echo “Element not found”
fi
