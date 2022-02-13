#!/bin/bash
#ddrage0 Week3.4 
input="/Users/dan/Documents/scripting/Portfolio/Week3/filenames.txt"

while IFS= read -r line 

do

    if [[ $line =~ ".sh" ]]; then
            echo "That file exists."

    elif [[ $line =~ ".." ]]; then
            echo "That's a directory."

    elif [[ $line =~ "$Folder" ]]; then
            echo "That's a directory."
    
    elif [[ $line =~ ".jpg" ]]; then   
            echo "I don't know what that is!"
    fi
done < "$input"

#References
#https://stackoverflow.com/questions/229551/how-to-check-if-a-string-contains-a-substring-in-bash



#while read -r line; do
    #name="$line"
    #echo "Name read from file - $name"
#done < "$filename"