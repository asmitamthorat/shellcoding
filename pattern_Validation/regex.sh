#! /bin/bash
shopt -s extglob
read -p "enter the first name: " fName
read -p "enter the last name : " lName
read -p "enter the phone number : " phoneNumber
read -p "enter the email-id : " mail
read -p "enter the password : " password

function checkPassword(){
	pat4="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[\#\@\$\?])[a-zA-Z0-9\#\@\$\?]{8,}$"
	if [[ $password =~ $pat4 ]]
	then
		echo "valid password"
	else 
		echo "invalid password"
	fi
}
function checkMail(){				#checking for mail
	mailPattern="^[a-zA-Z]{3}[a-zA-Z0-9\#\.\!\$\_]*\@[a-z]*\.(co|in|com)$"
	if [[ $mail =~ $mailPattern ]]
	then
		echo "valid mail id"
	else
		echo "invald mail id"
	fi
}
function checkPhoneNumber(){			#checking for phone number
	phonePattern='^[0-9]{10}$'
	if [[ $phoneNumber =~ $phonePattern ]]
	then
		echo "valid phone number"
	else
		echo "invalid phone number"
	fi
}

function checkName() {				#checking for first name
	namePattern='^[[:upper:]]{1}[[:lower:]]*$'
	if [[ $fName =~ $namePattern ]]
	then
                echo "valid first name "
        else
                echo "invalid  first name"
        fi
}
function checkName2() {				#checking for last name
        namePattern2='^[[:upper:]]{1}[[:lower:]]*$'
        if [[ $lName =~ $namePattern2 ]]
        then
                echo "valid last name "
        else
                echo "invalid last name"
        fi

}

checkName $fName
#lastName=checkName $lNname
checkName2 $lName
checkPhoneNumber $phoneNumber
checkMail $mail
checkPassword $password
