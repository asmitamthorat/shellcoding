#! /bin/bash

function generateTH ( ) {
        if [ $number -lt 5 ]					#printing head tail according to condition
        then
                echo "head"
        else
                echo "tail"
        fi
}


function randomNumber( ){
        DIV=$(( $1+1 ))                                 #to consider limit value
        number=$(($RANDOM%$DIV))                        #Generating random value
        generateTH $number
}
upperLimit=9
randomNumber $upperLimit			#calling function randomNumber
