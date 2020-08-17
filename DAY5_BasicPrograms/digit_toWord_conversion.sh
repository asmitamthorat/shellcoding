#! /bin/bash -x
function converter()
{
        case $number in
                0)
                echo "zero";;
                1)
                echo "one";;
                2)
                echo "two";;
                3)
                echo "Three";;
                4)
                echo "four";;
                5)
                echo "Five";;
                6)
                echo "Six";;
                7)
                echo "Seven";;
                8)
                echo "eight";;
                9)
                echo "nine"

        esac
}
read -p "enter the number" number
converter $number                               #calling the function
