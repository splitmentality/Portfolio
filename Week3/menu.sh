#!/bin/bash
#ddrage0 #30/1/2022
#Combining different scripts #Step 2.5

../passwordCheck.sh
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

else
    echo "Goodbye"
fi
echo ""
# Allow user to select 1, 2 or 3 or invalid
read var_2

if [ "$var_2" == 1 ]; then
    ./foldermaker.sh

elif [ "$var_2" == 2 ]; then
    ./foldercopier.sh

elif [ "$var_2" == 3 ]; then
    ../setPassword.sh

else
    echo "Invalid command. Start again"

fi

# Final note: the folder copier will only copy folders in directory placement it's in.
#References
#https://stackoverflow.com/questions/8352851/shell-how-to-call-one-shell-script-from-another-shell-script
#https://stackoverflow.com/questions/18161234/integer-comparison-in-bash-using-if-else
#https://ryanstutorials.net/bash-scripting-tutorial/bash-input.php
#https://askubuntu.com/questions/74780/how-to-execute-a-script-in-a-different-directory-than-the-current-one

