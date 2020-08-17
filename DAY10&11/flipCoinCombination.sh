#! /bin/bash

hCount=0			#innitailizing the values to 0
tCount=0
hhCount=0
ttCount=0
htCount=0
thCount=0
httCount=0
hhhCount=0
hhtCount=0
hthCount=0
thhCount=0
tthCount=0
tttCount=0
thtCount=0
function randomNumber ( ){			#generating random number
        div=$(( 9+1 ))
        number=$(($RANDOM % $div))
        echo "$number"
}
function flipGenerator ( ) {
                number1=`randomNumber`
                if [ $number1 -lt 5 ]
                then
                        result=0
                else
                        result=1
                fi
                echo "$result"			#returning the flip value
}
echo ""
echo "result for singlate"
counter=0
while [ $counter -lt 20 ]
do
        output=$(flipGenerator)
        if [ $((output)) -eq 0 ]		#comparing the output
        then
                hCount=$(($hCount+1))
        else
                tCount=$(($tCount+1))
        fi
        counter=$(($counter+1))
done
echo "Head Count=" $hCount
echo "Tail Count=" $tCount
total=$(($hCount+$tCount))				#calculating total count
echo "head(H) percentage (%) :"
printf %.3f "$(( $hCount*10**3/$total ))e-1"		#calculating the percentage for head count
echo ""
echo "Tail(H) percentage (%) :"
printf %.3f "$(( $tCount*10**3/$total ))e-1"
echo ""
#hh tt th ht
echo "result for doublet"
while [ $counter -lt 40 ]
do
        output1=$(flipGenerator)
        output2=$(flipGenerator)
        output="$output1""$output2"
        #echo $output
        if [ $((output)) -eq 00 ]
        then
                hhCount=$(($hhCount+1))
        elif [ $((output)) -eq 01 ]
        then
                htCount=$(($htCount+1))
        elif [ $((output)) -eq 11 ]
        then
                ttCount=$(($ttCount+1))
        else
                thCount=$(($thCount+1))
        fi
        counter=$(($counter+1))
done
totalD=$(($hhCount+$ttCount+$htCount+$thCount))				#calculating total
#calculating percentage of each doublet
echo "HH percentage (%) :"
printf %.3f "$(( $hhCount*10**3/$totalD ))e-1"
echo ""
echo "HT percentage (%) :"
printf %.3f "$(( $htCount*10**3/$totalD ))e-1"
echo ""
echo "TT percentage (%) :"
printf %.3f "$(( $ttCount*10**3/$totalD ))e-1"
echo ""
echo "TH percentage (%) :"
printf %.3f "$(( $thCount*10**3/$totalD ))e-1"


echo ""
echo "result for Triplt"
while [ $counter -lt 80 ]
do
        output1=$(flipGenerator)
        output2=$(flipGenerator)
        output3=$(flipGenerator)
        output="$output1""$output2""$output3"
        #echo $output
        if [ $((output)) -eq 111 ]
        then
                tttCount=$(($tttCount+1))
        elif [ $((output)) -eq 110 ]
        then
                tthCount=$(($tthCount+1))
        elif [ $((output)) -eq 101 ]
        then
                thtCount=$(($thtCount+1))
        elif [ $((output)) -eq 011 ]
        then
                httCount=$(($httCount+1))
        elif [ $((output)) -eq 001 ]
        then
                hhtCount=$(($httCount+1))

        elif [ $((output)) -eq 100 ]
        then
                thhCount=$(($thhCount+1))
        else
                hhhCount=$(($hhhCount+1))
        fi
        counter=$(($counter+1))
done
totalT=$(($tttCount+$tthCount+$thtCount+$httCount+$hhtCount+$thhCount+$hhhCount))		#calculating total triplt

echo "TTT percentage (%) :"									#calcualating triplet TTT
printf %.3f "$(( $tttCount*10**3/$totalT ))e-1"
echo ""
echo "TTH percentage (%) :"									#calulating the percentage
printf %.3f "$(( $tthCount*10**3/$totalT ))e-1"
echo ""
echo "THT percentage (%) :"
printf %.3f "$(( $thtCount*10**3/$totalT ))e-1"
echo ""
echo "HTT percentage (%) :"
printf %.3f "$(( $httCount*10**3/$totalT ))e-1"
echo ""
echo "HHT percentage (%) :"
printf %.3f "$(( $hhtCount*10**3/$totalT ))e-1"
echo ""
echo "THH percentage (%) :"
printf %.3f "$(( $thhCount*10**3/$totalT ))e-1"
echo ""
echo "HHH percentage (%) :"
printf %.3f "$(( $hhhCount*10**3/$totalT ))e-1"
