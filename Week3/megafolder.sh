#!/bin/bash
#ddrage0 Week 3.3 Megafolder exercise
# 5/2/22

#If there aren't two arguments to the script
echo $#
if (($#!=2)); then
    Print an error and exit

    echo "Error, provide two numbers" && exit 1
fi

# For every number between the first argumkent and the last

for ((i = $1; i <= $2; i++))

do
    # Create a new folder for that number

    echo "Creating directory number $i"

   mkdir "week $i"
done

