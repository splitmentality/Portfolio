#!/bin/bash
#ddrage0 Week1
read -p "type the name of the folder you would like to copy: " folder_name

#if the name is a valid directory

if [ -d "$folder_name" ]; then 
    #copy it to a new location

    read -p "type the name of the destination folder: " newFolderName

    cp -r "$folder_name" "$newFolderName"

else
    #otherwise print an error
    echo "I couldn't find that folder"

fi
