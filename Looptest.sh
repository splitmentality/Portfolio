#!/bin/bash
#Daniel Drage ddrage0
#Assessment 4 CYB6004: Software Based Solution 26/02/2022
#Edited 27/02/2022
# the website is Purplesec webpage - 2021 Cyber Security Statistic: The Ultimate List Of Stats, Data & Trends
#located at : https://purplesec.us/resources/cyber-security-statistics/

#   The loop aims to give a yes or no answer and to break if y or n is selected as it is assumed
#   you don't need to re-download the file again. The loop also is designed to send you back to the start if 
#   neither y or n were selected without using the terminal to run the script again.


while [[ "$Ans_1" != "y"||"$Ans_1" != "n" ]]; do

     read -p "We are downloading a cybersecurity webpage called Purplesec:
 Would you like to download the page and save to a seperate text file? y/n: " Ans_1

 echo ""

     echo "$Ans_1"

         if [ "$Ans_1" == "y" ]; then
             ./downloadPage.sh     
             break

         elif [ "$Ans_1" == "n" ]; then
             echo "Ok lets continue"
             break

         else
             echo "please type y or n. Start again"
   
         fi

done