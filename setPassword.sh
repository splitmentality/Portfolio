#!/bin/bash
#ddrage0@bash: foldermaker.sh
# Week 2 Step 2 creates a secret password
# DDrage0 28/01/2022
# Edited 28/1/2022
# 2nd Edit 29/1/2022


read -p "Type in the name of a folder that you want : " folder_name
mkdir $folder_name
cd $folder_name
read -sp 'Type a Password : ' pass_var
# Edited echo $pass_var > secret.txt adding sha256sum hash then moving to
echo $pass_var | sha256sum >> secret.txt


exit 0

#References
# https://apple.stackexchange.com/questions/221719/how-to-create-a-text-file-and-a-folder-from-terminal/339470
# https://www.youtube.com/watch?v=AcSkkNAsGCY