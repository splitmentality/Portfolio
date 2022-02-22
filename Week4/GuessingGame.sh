#!/bin/bash
#ddrage0 Week4.3 11/02/2022

#filtering out all text except for echo containig exclamation mark.
#changing echo "Correct!" to echo "Right!"
grep 'echo ".*!"' '/Users/dan/Documents/GitHub/Portfolio/Week4/GuessingGame.sh' | sed 's/Correct/Right/'

while [[ "$num1" != 42 ]]; do
    read -p "Please type a number between 1 and 100 " num1

    if [[ "$num1" < 42 ]]; then
        echo "Too Low!"

    elif [[ "$num1" > 42 ]]; then
        echo "Too High!"
    
    elif [[ "$num1" == 42 ]]; then
        echo "Correct!"
        exit 0
    elif [[ "$num1" != ^[0-9]+$ ]]; then   
        echo "Must put in a number"
    fi
done
exit 0