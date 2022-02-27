#!/bin/bash
#ddrage0 Week 5.2 Develop regular expressions
#16/02/2022
#edited 18/02/2022

echo ""
echo ""
#This grep statement to filter out everything but files that have 'sed' in their lines. 
#the piped function is designed to clean it up by removing the path it belongs to and the .sh or txt at the end

grep -lr 'sed' ./ | sed 's=.*/==;s/\.[^.]*$//'
echo ""
echo ""
#This statement filters the files that only include the letter 'm' at the start of the line. both upper and lower case.
grep -lr '^[mM]' ./ | sed 's=.*/==;s/\.[^.]*$//'
echo ""
echo ""
#Filters files for line that contain 3 digit numbers of any kind.
grep -lr '\<[0-9]\{3\}\>' ./ | sed 's=.*/==;s/\.[^.]*$//'
echo ""
echo ""
#This is to filter for echo statements that contain at least 3 words
grep -lr 'echo\s\w\w\w' ./ | sed 's=.*/==;s/\.[^.]*$//'

echo ""

#references
#https://www.codegrepper.com/code-examples/shell/bash+list+all+files+in+directory+and+subdirectories
#https://seekfast.org/blog/search-text-in-documents/how-to-search-text-in-multiple-files-in-linux/
#grep, awk and sed  – three VERY useful command-line utilities    Matt Probert, Uni of York   grep = global regular expression print
#https://unix.stackexchange.com/questions/44735/how-to-get-only-filename-using-sed

#https://unix.stackexchange.com/questions/59893/grep-lines-starting-with-1-in-ubuntu

#https://www.unix.com/unix-for-dummies-questions-and-answers/43033-grep-line-between-3-5-digits.html

