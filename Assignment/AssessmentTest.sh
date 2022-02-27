#!/bin/bash



mal_stats= "$(awk '/Malware Statistics/{ f = 1 } f; /Ransomware Statistics/{ f = 0 }' Assignment.txt | grep -e "<li>" | sed 's/<strong>//;s/<.strong>//g' | sed 's/<li>/⊛ /;s/<.li>//g')"

echo " "
echo " "

Ran_stats= "$(awk '/Ransomware Statistics/{ f = 1 } f; /Cryptojacking/{ f = 0 }' Assignment.txt | grep -e "<li>" | sed 's/<strong>//;s/<.strong>//g' | sed 's/<li>/⊛ /;s/<.li>//g')"

echo " "
echo " "

Crypt_stats= "$(awk '/Cryptojacking/{ f = 1 } f; /Social Engineering Statistics/{ f = 0 }' Assignment.txt | grep -e "<li>" | sed 's/<strong>//;s/<.strong>//g' | sed 's/<li>/⊛ /;s/<.li>//g')"

echo " "
echo " "

#       THe following a various awk, grep and sed code variations that were tried -
#  -    unsuccessfully to parse the assignment.txt file into readable lists.
#awk '
    #BEGIN {
        #info["<strong>Malware Statistics"] = 1
        #info["<strong>Ransomware Statistics"] = 1
       # info["<strong>Cryptojacking"] = 1
        #info["<strong>Phising Statistics"] = 1
   # }
   # $1 ~ /^[<strong>]/ {p = 0}
   # $1 in info {p = 1; next}
   ## p
#' Assignment.txt

#awk '$1=="Malware Statistics" {f=1} $1=="Ransomware Statistics" {f=0} f' Assignment.txt

#This grep file wasthe first iteration to get close to parsing out the sections of interest i.e. the subheadings:
#   Malware, Ransomware, Cryptojacking

#grep -e "<h3.*<h3" Assignment.txt

#   These two grep files were the most successful in parsing out all the 'junk' text and characters into far more readable forms:
#   But the grep -e "<h3" command only contained the subheading titles I was looking for and the grep -e "<li>" just had all the text that was considered lists
#   Used the set up for the seds here and greps though to produce the final script located above.

#grep -e "<li>" Assignment.txt | sed 's/<li>//;s/<.li>//g'
#grep -e "<h3" Assignment.txt | grep -o -e "<strong>.*</strong>" | sed 's/<strong>//;s/<.strong>//g'

#   First trials and error

# sed 's/<.strong>//g'

#| sed "s/<li>//" | sed "s/<\/li>//" | awk -F":" '

#   Attempted to put the list in a table with the subheadings as the divider between each. This could still work but am
#   unable to format it further.
#BEGIN {printf "%-22s %28s %-22s %-22s %22s\n" , "| \033[34mMalware Statistics\033[0m" , "| \033[34mRansomware Statistics\033[0m |" , "\033[34mCryptojocking\033[0m" , "| \033[34mSocial Engineering Statistics\033[0m" , "| \033[34mPhishing Statistics\033[0m |"

##print "|____________________|_______________________|_______________|_______________________________|_____________________|"

#}
#   {printf("| \033[33m%-22s\033[0m | \033[35m%-22s\033[0m | \033[35m%-22s\033[0m | \033[35m%-25s\033[0m | \033[33m%-22s\033[0m |\n", $1, $3, $4, $6, $7); }' Assignment.txt

#grep -e "<li>|</li>" Assignment.txt

#grep '<li' Assignment.txt > processedText.txt

# grep -r "^<strong>" ./Assignment/processedText.txt | awk -F: 'BEGIN {FS"<strong>"; print "|\033[34mMalware Statistics\033[37m   | \033[34mRansomware Statistics\033[37m  |   \033[34mCryptojacking\033[37m |  \033[34mSocial Engineering Statistics\033[37m                 |                |\n|___________|_________|__________|_______________________|_____________________|" } { printf "|%-21s| %-18s| %-19s| %-32s| %-30s|\n", "\033[33m"$1"\033[37m", "\033[35m"$3"\033[37m", "\033[35m"$4"\033[37m", "\033[35m"$6"\033[37m", "\033[35m"$7"\033[37m" }' Assignment.txt
#  | sed "/<li>//"

# sed -r "/html//" Assignment.txt

#grep -e "<li>" Assignment.txt | sed "s/<li>//" | sed "s/<\/li>//" | awk 'BEGIN { print "Malware Statistics  | Ransomware Statistics  | Cryptojacking  |"
                        #                                                                print'
#
## grep -r "^<strong>" ./Assignment/processedText.txt | | awk -F: 'BEGIN {FS"<strong>"; print "|\033[34mPhishing Statistics\033[37m   | \033[34mCost of Cyber Security Statistics\033[37m  |   \033[34mData Breach Statistics\033[37m |  \033[34mCyber Security Risks Statistics\033[37m                 |              |\n|___________|_________|__________|_______________________|_____________________|" } { printf "|%-21s| %-18s| %-19s| %-32s| %-30s|\n", "\033[33m"$1"\033[37m", "\033[35m"$3"\033[37m", "\033[35m"$4"\033[37m", "\033[35m"$6"\033[37m", "\033[35m"$7"\033[37m" }' Assignment.txt | column

#References
#https://www.unix.com/shell-programming-and-scripting/243198-using-sed-remove-multiple-strings-words-line.html
#http://srufaculty.sru.edu/david.dailey/unix/grepflags.html
#http://srufaculty.sru.edu/david.dailey/unix/grepflags.html
#https://www.theunixschool.com/2014/08/sed-examples-remove-delete-chars-from-line-file.html
#https://www.datafix.com.au/BASHing/2020-10-21.html