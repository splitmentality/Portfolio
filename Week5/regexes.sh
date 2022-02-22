#!/bin/bash
#ddrage0 Week 5.2 Develop regular expressions
#16/02/2022
#edited 18/02/2022

echo ""
echo ""
grep -lr 'sed' './Portfolio' | sed 's=.*/==;s/\.[^.]*$//'
echo ""
echo ""
grep -lr '^[mM]' './Portfolio' | sed 's=.*/==;s/\.[^.]*$//'
echo ""
echo ""
grep -lr '\<[0-9]\{3\}\>' './Portfolio' | sed 's=.*/==;s/\.[^.]*$//'
echo ""
echo ""
grep -lr 'echo\s\w\w\w' './Portfolio' | sed 's=.*/==;s/\.[^.]*$//'




#references
#https://www.codegrepper.com/code-examples/shell/bash+list+all+files+in+directory+and+subdirectories
#https://seekfast.org/blog/search-text-in-documents/how-to-search-text-in-multiple-files-in-linux/
#grep, awk and sed  – three VERY useful command-line utilities    Matt Probert, Uni of York   grep = global regular expression print
#https://unix.stackexchange.com/questions/44735/how-to-get-only-filename-using-sed

#https://unix.stackexchange.com/questions/59893/grep-lines-starting-with-1-in-ubuntu

#https://www.unix.com/unix-for-dummies-questions-and-answers/43033-grep-line-between-3-5-digits.html

