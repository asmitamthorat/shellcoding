#! /bin/bash -x
function randomNumber( ){
        DIV=$(( $1+1 ))                                 #to consider limit value
        number=$(($RANDOM%$DIV))                        #Generating random value
        echo "one digit random number: " $number
}
upperLimit=9
randomNumber $upperLimit				#printing digit number
