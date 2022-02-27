#!/bin/bash
#Daniel Drage ddrage0
#Assessment 4 CYB6004: Software Based Solution 26/02/2022
#Edited 27/02/2022
# the website is Purplesec webpage - 2021 Cyber Security Statistic: The Ultimate List Of Stats, Data & Trends
#located at : https://purplesec.us/resources/cyber-security-statistics/
 echo ""
 echo ""
#   This loop is to ask whether we need to download first the webite in question and simply pulls out 
#   the text from the new text file from downloadPage.sh and since the file will be downloaded in the same 
#   directory as this script, no issue should come about from the rest of the script running.

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

#These echo lines are designed to space out the output of the scripts to make it less clumped
echo ""
echo ""
# The script takes a while to load so this is here to indicate some waiting is neccessary.
echo "We are now loading statistics of Malware, Ransomware and Cryptojacking from Purplesec: please wait"

#   The following three scripts are the code to parse the text from the downloaded web page to easily read 
#   the lists of interest
mal_stats= "$(awk '/Malware Statistics/{ f = 1 } f; /Ransomware Statistics/{ f = 0 }' Assignment.txt | grep -e "<li>" | sed 's/<strong>//;s/<.strong>//g' | sed 's/<li>/⊛ /;s/<.li>//;s/&#8211;/-/g')"

echo " "
echo " "

Ran_stats= "$(awk '/Ransomware Statistics/{ f = 1 } f; /Cryptojacking/{ f = 0 }' Assignment.txt | grep -e "<li>" | sed 's/<strong>//;s/<.strong>//g' | sed 's/<li>/⊛ /;s/<.li>//;s/&#8211;/-/g')"

echo " "
echo " "

Crypt_stats= "$(awk '/Cryptojacking/{ f = 1 } f; /Social Engineering Statistics/{ f = 0 }' Assignment.txt | grep -e "<li>" | sed 's/<strong>//;s/<.strong>//g' | sed 's/<li>/⊛ /;s/<.li>//;s/&#8211;/-/g')"

echo " "
echo " "

#References
#https://www.unix.com/shell-programming-and-scripting/243198-using-sed-remove-multiple-strings-words-line.html
#http://srufaculty.sru.edu/david.dailey/unix/grepflags.html
#http://srufaculty.sru.edu/david.dailey/unix/grepflags.html
#https://www.theunixschool.com/2014/08/sed-examples-remove-delete-chars-from-line-file.html
#https://www.datafix.com.au/BASHing/2020-10-21.html

#https://stackoverflow.com/questions/4662938/create-text-file-and-fill-it-using-bash#edited 25/02/2022