#!/bin/bash
#ddrage0 Week 5.3 
#18/02/2022

#filtering out all text except for echo containig exclamation mark.
#changing echo "Correct!" to echo "Right!"
grep 'echo ".*!"' '../Week4/GuessingGame.sh' | sed 's/Correct/Right/'