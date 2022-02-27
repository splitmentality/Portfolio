#!/bin/bash
#hidden Password Hash
#ddrage0 Week6.5 Bash Attack

passwordHash="04e77bf8f95cb3e1a36a59d1e93857c411930db646b46c218a0352e432023cf2";

#for each line in the file

for word in $(cat wordlist.txt); do

    #hash the word
    wordlistHash=$(echo -n $word | sha256sum | awk '{ print $1; }')

    echo "Trying $word: $wordlistHash"

    #if the hash is the same as the correct password's hash then we have cracked the password!

    if [ $wordlistHash = $passwordHash ]; then
        echo "Password has been cracked! It was $word"

        exit 0
    fi

done

exit 1