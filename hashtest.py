#!/usr/bin/python3
#ddrage0 Week6.6 Hash testing to make sure can hash inputs

#first import the hash.lib thing
import hashlib
pass_wrd = input("Please type a password ")

print(f"To confirm the password you typed is {pass_wrd}")

#Now to hash the string

hashed_passwrd = hashlib.sha256(pass_wrd.encode("utf-8")).hexdigest()

print(f"Okay we have hashed your string, it is\n\t {hashed_passwrd}")

#References

# https://www.pythoncentral.io/hashing-strings-with-python/
# DictionaryAttack.py - https://blackboard.ecu.edu.au/webapps/blackboard/execute/displayLearningUnit?course_id=_662967_1&content_id=_8274280_1


