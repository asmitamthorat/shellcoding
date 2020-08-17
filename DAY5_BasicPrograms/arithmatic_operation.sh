#!/bin/bash

function arithmaticOperation( ) {

        echo "number1 + number2 * number3 : "  $(($number1 + $number2 * $number3))
        echo "number1 + number2 / number3 : "  $(($number3 + $number1 / $number2))
        echo "number1 % number2 + number3 : "  $(($number1 % $number2 + $number3))
        echo "number1 * number2 + number3 : "  $(($number1 * $number2 + $number3))
        echo "Quotients of each number diving each other is"
        echo "number1 and 2"; printf %.3f "$(( $number1*10**3/$number2))e-3"
        echo "number1 and 2"; printf %.3f "$(( $number2*10**3/$number3))e-3"
        echo "number3 and 1"; printf %.3f "$(( $number3*10**3/$number1))e-3"
}
read -p "enter the first number : " number1
read -p "enter the second number : " number2
read -p "enter the third number : " number3
arithmaticOperation $number1 $number2 $number3                          #calling the function
