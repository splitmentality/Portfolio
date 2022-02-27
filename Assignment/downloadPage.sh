#!/bin/bash
#Daniel Drage ddrage0
#Assessment 4 CYB6004: Software Based Solution 17/02/2022
#Edited 25/02/2022

#Create a script that will download a website information from a cybersecurity website
# the website is Purplesec webpage - 2021 Cyber Security Statistic: The Ultimate List Of Stats, Data & Trends
#located at : https://purplesec.us/resources/cyber-security-statistics/

#This piece of code is to download a webpage file and place it into a txt file for easier formatting.

curl "https://purplesec.us/resources/cyber-security-statistics/" > Assignment.txt

#https://stackoverflow.com/questions/4662938/create-text-file-and-fill-it-using-bash#edited 25/02/2022