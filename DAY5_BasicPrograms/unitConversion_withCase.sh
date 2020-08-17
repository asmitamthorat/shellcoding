echo "press 0 for feet to inch conversion"
echo "press 1 for inches to meter conversion"
echo "press 2 for feet to meter conversion"
echo "press 3 for meter to feet conversion"
read -p "enter the option" option                  #option to check case
case $option in
        0)
        read -p "enter the value in feet=" number
        echo "inches=" $((number*12))
         ;;
         1)
        read -p "enter the value in inches" number
        echo "meter =" $((number/12))
        ;;
         2)
        read -p "enter the value in feet " number
        echo "meter="
        printf %.3f "$(( $number*10**3*3))e-4"
        ;;
        3)
        read -p "enter the value  in meter " number
        echo "feet="
        printf %.3f "$(($number*10**3*328))e-5"
esac
