#!/bin/bash
#ddrage0 Week5.1 date updated 26/02/2022
#Simple regex introduction

echo ""
#This grep statement is designed to filter for all files contain the echo statement in the portfolio
#The piped statement is designed to clean up the results to a more easy to read position
grep -r echo ./ | sed 's=.*/==;s/\.[^.]*$//'

echo ""
echo ""
echo ""
#This is to search for all lines that start with the echo statement
grep -r "^echo" ./ | sed 's=.*/==;s/\.[^.]*$//'
# the echo statements here is to create spaces obvious enough to differentiate between the grep filters
echo ""
echo ""
echo ""
#This grep is to filter for all echo statements with a flag
grep -r 'echo -.*' ./

echo ""
echo ""
echo ""
#This is to filter for echo statements with the text in double quotes and start with upper case letters
grep -r 'echo .*\"[A-Z].*\"' ./ | sed 's=.*/==;s/\.[^.]*$//'

echo ""
echo ""
echo ""
#To search for echo statements with double quotes and ends in exclamation marks
grep -r 'echo .*\".*!\"' ../ | sed 's=.*/==;s/\.[^.]*$//'