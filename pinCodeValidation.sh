#!/bin/bash -x
shopt -s extglob

#Pattern for 6 digit PinCode
PINCODE_PATTERN="^[0-9]{6}$"

#Pattern for 6 digit PinCode with space 
PINCODE_PATTERN="^[0-9]{3}[ ]?[0-9]{3}$"

#To check the validation for PinCode
function pinCodeValidation() {
	if [[ $1 =~ $2 ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

#Check for valid PinCode of 6 digits
read -p "Enter a 6 digit PINCODE: " pinCode
pinCodeValidation $pinCode $PINCODE_PATTERN

#Check for the alphabets or special characters at the beginning which is Invalid
read -p "Enter a PINCODE begins with alphabets or special characters to restrict: " pinCodeCheck1
pinCodeValidation $pinCodeCheck1 $PINCODE_PATTERN

#Check for the alphabets or special characters at the end which is Invalid
read -p "Enter a PINCODE ends with alphabets or special characters to restrict: " pinCodeCheck2
pinCodeValidation $pinCodeCheck2 $PINCODE_PATTERN

#Check for the alphabets or special characters at the end which is Invalid
read -p "Enter a PINCODE that has space after 3 digits: " pinCodeCheck3
pinCodeValidation $pinCodeCheck3 $PINCODE_PATTERN

