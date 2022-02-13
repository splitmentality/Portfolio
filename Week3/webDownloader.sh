#!/bin/bash
#ddrage0 7/02/2022 Week 3.5

#The 'while' command tells the code to keep repeating while exit 0 does not occur i.e. Y is selected
while [ exit != 0 ]
do
    #Instructions for the user to choose to use the web downloader
    read -p "Do you want to use the Web Downloader? Y/N? : " answer1
        if [[ "$answer1" == "y" || "$answer1" == "Y" ]]; then

        #This informs the user to imput the url or website that is desired
            read -p "Type the website or URL you want to download here here : " answer2
            wget $answer2
            
        #This occurs when 'N' is selected takes the user through to quit the loop
        elif [[ "$answer1" == "N" || "$answer1" == "n" ]]; then
            read -p "Type 'exit' to quit : "
             exit 0
        fi
done

#https://www.cyberciti.biz/faq/bash-while-loop/
#https://serverfault.com/questions/226386/wget-a-script-and-run-it
