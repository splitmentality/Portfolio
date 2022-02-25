#!/usr/bin/python3
#ddrage0 Week6.6 Brute Force Attack 24/02/2022

#first import the hash.lib and string

import hashlib
import string

pass_wrd = input("Please type a password ")

print(f"To confirm the password you typed is {pass_wrd}")

#Now to hash the string

hashed_passwrd = hashlib.sha256(pass_wrd.encode("utf-8")).hexdigest()

print(f"Okay we have hashed your string, it is\n\t {hashed_passwrd}")

print("We are now attempting to crack it!")

passwordHash = hashed_passwrd

#using examples from other scripts we use the following to generate iterative lists

from itertools import product

list1 = string.printable

#This is the crux of the code where it will now iterate from 1 character increasing to determine if the hashed product is the same as the passwordHash
def brute_force():
    for length in range(1, 99):
        for p in product(list1, repeat=length):
            guess = ''.join(p)
            if hashlib.sha256(guess.encode("utf-8")).hexdigest() == passwordHash:
                print(f"The password you typed was {guess}")
                return guess

brute_force()

#Final note - the script seems to have a lot of trouble of hashed passwords of 5 and more.

#References
# https://stackoverflow.com/questions/47952987/how-to-make-all-of-the-permutations-of-a-password-for-brute-force
# https://www.google.com/search?q=recursive+brute+force+password+python&ei=PYIYYsOzOdnez7sP6MSLwA0&ved=0ahUKEwiDxtbKp5r2AhVZ73MBHWjiAtgQ4dUDCA4&uact=5&oq=recursive+brute+force+password+python&gs_lcp=Cgdnd3Mtd2l6EAMyBwgAEEcQsAMyBwgAEEcQsAMyBwgAEEcQsAMyBwgAEEcQsAMyBwgAEEcQsAMyBwgAEEcQsAMyBwgAEEcQsAMyBwgAEEcQsANKBAhBGABKBAhGGABQ1gtYnRNgkxRoAXABeAGAAa4CiAGQDZIBBzAuNi4xLjGYAQCgAQHIAQjAAQE&sclient=gws-wiz
# https://bountify.co/simple-brute-force-python-script
# https://stackoverflow.com/questions/11747254/python-brute-force-algorithm
# https://stackoverflow.com/questions/17064472/python-brute-forcing-very-basic
# https://opensource.com/article/19/6/cryptography-basics-openssl-part-2
# 
# 
