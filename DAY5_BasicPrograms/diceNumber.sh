#! /bin/bash -x
function randomNumber( ){
        DIFF=$(($upperLimit-$lowerLimit+1))
        R=$(($(($RANDOM%$DIFF))+$lowerLimit))           #generating random number
        echo "face of die: " $R
}
lowerLimit=1
upperLimit=6				#to generate number between 1 to 6

randomNumber $lowerLimit  $upperLmit    #printing dice number
