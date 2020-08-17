#! /bin/bash
echo "press 1 for the degf to degc conversion"
echo "press 2 for the degc to degf conversion"
read num
read -p "enter the value" value

function celciusConversion ( ){
        if [ $((value)) -gt 32 -a $((value)) -lt 212 ]
        then
                echo "conversion in degC"
                printf %.3f "$(( $value*10**3*18+320000))e-4"
        fi
}

function faradConversion ( ){
        if [ $((value)) -gt 32 -a $((value)) -lt 212 ]
        then
                echo "conversion in degF"
                printf %.3f "$(( ($value*10**2-3200)*55 ))e-2"
        fi
}


case $num in
        1)
        celciusConversion $value ;;
        2)
        faradConversion $value ;;
        esac
