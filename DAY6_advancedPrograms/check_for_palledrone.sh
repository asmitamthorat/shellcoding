function palindrome ( ){
        while [ $num -gt 0 ]
        do
                s=$(( $num % 10 ))
                num=$(( $num / 10 ))
                rev=$( echo ${rev}${s} )
        done
        echo "$rev"			#printing reverse of original number 
}


read -p "enter the number" num
temp=$num
check2=$(palindrome $num)
if [ $temp -eq $check2 ]           #check for original no. & reverse no. 
then
       echo "Number is palindrome"
else
       echo "Number is NOT palindrome"
fi
