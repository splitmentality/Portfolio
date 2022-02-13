#!/bin/bash
#ddrage0 09/02/2022 Week 3.2
#Get Numbers

#This function prints a given error

printERROR()

{
    echo -e "\033[31mERROR:\033[0m $1"
}

#This function will get a value between the 2nd and 3rd arguments

getNumber()

{
    read -p "$1: "
    while (( $REPLY < $2 || $REPLY> $3 )); do
        printERROR "Input must be between $2 and $3"
        read -p "$1: "
    done
}

echo "this is the start of the script"
getNumber "please type a number between 1 and 10" 1 10
echo "Thank you!"
getNumber "please type a number between 50 and 100" 50 100
echo "Thank you!"
