#!/bin/bash
# ddrage0 29/01/2022
# Password Check

# Ask the user to enter their username and type a password that is hidden
read -p "Please enter your username : " user_name

read -sp "Please enter a password : " pass_word
hash_word="$(echo $pass_word | sha256sum)"
# next line to make a line space to tidy the output
echo ""
# to read contents of sectret.txt file line by line
input="/home/kali/Documents/Scripts/Portfolio/Week2/secret.txt"
while IFS= read -r line
do
  echo "$line"
done < "$input"

# to compare the hash of the txt file to the password hash line 8
if [ "$hash_word" = "$line" ]; then
    echo "Access Granted"
    exit 0
else 
    echo "Access Denied"
    exit 1
fi


# References
# https://unix.stackexchange.com/questions/4569/storing-output-of-command-in-shell-variable
# https://linuxize.com/post/how-to-compare-strings-in-bash/
# https://www.cyberciti.biz/faq/unix-howto-read-line-by-line-from-file/

