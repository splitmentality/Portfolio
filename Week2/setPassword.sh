#ddrage0@bash: foldermaker.sh
# Week 2 Step 2 creates a secret password
# DDrage0 28/01/2022

#!/bin/bash

read -p "Type in the name of a folder that you want : " folder_name
mkdir $folder_name
cd $folder_name
read  -sp "Type a Password : " pass_var
echo $pass_var > secret.txt
exit 0

#References
# https://apple.stackexchange.com/questions/221719/how-to-create-a-text-file-and-a-folder-from-terminal/339470
# https://www.youtube.com/watch?v=AcSkkNAsGCY
