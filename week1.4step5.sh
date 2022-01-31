#!/bin/bash
echo "My name is Dan, welcome to the viewing of this script."
echo "To show the extra layer of complexity please enter your name :) "
read name
cowsay "Hello $name! type hello to the cow"
read hello
cowsay "Thank you for the $hello! now it's time to say goodbye, please type goodbye"
read goodbye
cowsay "It was a pleasure to meet you $name! see you later, it's time for me to mooove on xD"

exit 0

