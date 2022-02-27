#!/usr/bin/python3
#ddrage0 Week6.5 Python Attack 24/02/2022

import hashlib

#hidden password hash

passwordHash = "bd3dae5fb91f88a4f0978222dfd58f59a124257cb081486387cbae9df11fb879"

#open the wordlist

with open("wordlist.txt","r") as wordlist:
    #repeat for each word

    for word in wordlist.readlines():
        word = word.rstrip()

        #hash the word

        wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()

        print(f"Trying password {word}:{wordlistHash}")

        #if the hash is the same as the correct password's hash then we have cracked the password!
        if(wordlistHash == passwordHash):
            print(f"Password has been cracked! it was {word}")

            break