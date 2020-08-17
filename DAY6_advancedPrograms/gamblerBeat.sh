#! /bin/bash

function randomNumber( ){
        DIV=$(( $upperLimit+1 ))
        number=$(($RANDOM%$DIV))                        #Generating random number
        echo "$number"
}

upperLimit=9
beatStarter=100
betAmount=1
winCount=0
lossCount=0
while [ $((beatStarter)) -gt 0 -a $((beatStarter)) -lt 200 ]
do
        gNumber=$(randomNumber $upperLimit)   #calling function to gene. num
        if [ $((gNumber)) -gt 5 ]
        then
                winCount=$(($winCount+1))
                beatStarter=$(($beatStarter+1))
        else
                lossCount=$(($lossCount+1))
                beatStarter=$(($beatStarter-1))
        fi
done

echo "win count " $winCount
echo "lose count" $lossCount
