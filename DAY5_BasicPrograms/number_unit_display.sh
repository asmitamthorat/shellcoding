#! /bin/bash
function unitDisplay()
{
        case $ccount in			#printing unit
                0)
                echo "unit";;
                1)
                echo "ten";;
                2)
                echo "hundred";;
                3)
                echo "thousand";;
                4)
                echo "lakh";;
        esac
}
read -p "enter the number : " number
count=0
echo "number is:" $number
while [ $number -gt 0 ]
do
        number=$(($number/10))
        count=$(($count+1))
done
echo "unit of the number:"
ccount=$(($count-1))
unitDisplay $ccount		#calling function unitdisplay
