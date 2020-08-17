#! /bin/bash
function unitDisplay()
{
        if [ $ccount -eq 0 ]
        then
                echo "unit"		
        elif [ $ccount -eq 1 ]
        then
                echo "ten"
        elif [ $ccount -eq 2 ]
        then
                echo "hundred"
        fi
}
read -p "enter the number : " number
count=0
while [ $number -gt 0 ]
do
        number=$(($number/10))
        count=$(($count+1))
done
echo "number is:" $number
echo "unit of the number:"
ccount=$(($count-1))
unitDisplay $ccount		#calling function unitDisplay to dispaly unit

