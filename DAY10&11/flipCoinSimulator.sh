#! /bin/bash
function randomNumber ( ){
        div=$(( 9+1 ))
        number=$(($RANDOM % $div))
        echo "$number"
}
function flipGenerator ( ) {
        hcount=0
        tcount=0
        count=21
        while [ $hcount -lt $count -a $tcount -lt $count ]
        do
                number1=`randomNumber`				#calling the function randomNumber to get 1 digit random number
                if [ $number1 -lt 5 ]
                then
                        hcount=$(($hcount+1))
                else
                        tcount=$(($tcount+1))

                fi

        done
        echo "$hcount $tcount"					#return value of head count and tail count
}


diff=0
#if count difference is less than 2
while [ $((diff)) -lt 2 ]
do
        result=$(flipGenerator)					#callling the function flip generator
        hcount=$( echo $result | awk '{print $1}' )
        tcount=$( echo $result | awk '{print $2}' )

        if [ $tcount -gt $hcount ]
        then
                diff=$(($tcount-$hcount))		#calculation difference between two to check for the condition
        else
                diff=$(($hcount-$tcount))
        fi
done

echo "win"  $hcount			#printing head count
echo "lose" $tcount			#printing tail count
