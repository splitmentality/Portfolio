#!/bin/bash
#ddrage0 Week5.5 20/02/2022
#Awk exercise to parse lots of strings into a more readable table.
#Edited 22/02/2022 - Figured out how to better format the table to match up
# - Figured out how to add the horizontal lines
# - Wasn't able to get the orange colour but managed to approximate both colours required
#NOTE had to get the information from etc/passwd from kali linux set up
awk -F: 'BEGIN {FS":"; print "|\033[34mUsername\033[37m   | \033[34mUserID\033[37m  |  \033[34mGroupID\033[37m |  \033[34mHome\033[37m                 | \033[34mShell\033[37m               |\n|___________|_________|__________|_______________________|_____________________|" } { printf "|%-21s| %-18s| %-19s| %-32s| %-30s|\n", "\033[33m"$1"\033[37m", "\033[35m"$3"\033[37m", "\033[35m"$4"\033[37m", "\033[35m"$6"\033[37m", "\033[35m"$7"\033[37m" }' ../Week5/passwd.txt | column
