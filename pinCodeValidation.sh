#!/bin/bash -x
shopt -s extglob

#Pattern for PinCode
PINCODE_PATTERN="^[0-9]{6}$"

#To check the validation for PinCode
function pinCodeValidation() {
	if [[ $pinCode =~ $PINCODE_PATTERN ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

read -p "Enter a PINCODE: " pinCode
pinCodeValidation $pinCode $PINCODE_PATTERN
