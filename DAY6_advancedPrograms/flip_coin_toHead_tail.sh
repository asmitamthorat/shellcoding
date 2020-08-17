#! /bin/bash
function randomNumber ( ){
        div=$(( 9+1 ))
        number=$(($RANDOM % $div))
        echo "$number"
}
function generate ( ) {
        hcount=0
        tcount=0
        count=11
        while [ $hcount -lt $count -a $tcount -lt $count ]		#run commands still any one of the count reach 11
        do
                number1=`randomNumber`
                if [ $number1 -lt 5 ]
                then
                        hcount=$(($hcount+1))
                else
                        tcount=$(($tcount+1))

                fi

        done
        echo   "tail count " $tcount					#printing tail count
        echo   "head count " $hcount					#printing head count
}


generate								#calling function ganerate
