#!/bin/bash
#ddrage0 #30/1/2022
#Combining different scripts #Step 2.5
#Edited 8/02/2022 MegaMenu.sh Week 3.6

./passwordCheck.sh
# To make variable previous script 0 or 1
var_1=$?
# Create space for easier viewing
echo ""

# If var_1 0 then run the if selection
if [ "$var_1" == 0 ]; then
    echo "Select an option"
    echo "1 Create a folder"
    echo "2 Copy a folder"
    echo "3 Set a password"
    echo "4 Calculator"
    echo "5 Create Week Folders"
    echo "6 Check Filenames"
    echo "7 Download a File"
    echo "8 exit"
else
    echo "Goodbye"
fi
echo ""
# Allow user to select 1, 2 or 3 or invalid
read var_2

if [ "$var_2" == 1 ]; then
  /Users/dan/Documents/scripting/Portfolio/foldermaker.sh

elif [ "$var_2" == 2 ]; then
    /Users/dan/Documents/scripting/Portfolio/foldercopier.sh

elif [ "$var_2" == 3 ]; then
    /Users/dan/Documents/scripting/Portfolio/setPassword.sh

elif [ "$var_2" == 4 ]; then
    /Users/dan/Documents/scripting/Portfolio/Week3/basicCalculator.sh

elif [ "$var_2" == 5 ]; then
    /Users/dan/Documents/scripting/Portfolio/megafolder.sh

elif [ "$var_2" == 6 ]; then
    /Users/dan/Documents/scripting/Portfolio/Week3/filenames.sh

elif [ "$var_2" == 7 ]; then
    /home/kali/Documents/Scripts/Portfolio/Week3/webDownloader.sh

elif [ "$var_2" == 8 ]; then
    exit 0
else
    echo "Invalid command. Start again"

fi

# Final note: the folder copier will only copy folders in directory placement it's in.
#References
#https://stackoverflow.com/questions/8352851/shell-how-to-call-one-shell-script-from-another-shell-script
#https://stackoverflow.com/questions/18161234/integer-comparison-in-bash-using-if-else
#https://ryanstutorials.net/bash-scripting-tutorial/bash-input.php
#https://askubuntu.com/questions/74780/how-to-execute-a-script-in-a-different-directory-than-the-current-one

