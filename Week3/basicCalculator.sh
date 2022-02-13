#!/bin/bash
#ddrage0
#Week3.2 step 3
#Basic Calculator bash script with colours
#date first made: 2/2/2022
#Edit 1: 3/2/2022 Edit 2: 4/2/2022

echo "Basic Calculator! Please add, subtract, multiply or divide"
echo "To start only two variables will be done at a time"


read "val_1" "button" "val_2"



#This if elif else statement takes care of the maths operation and change in colour
if  [ "$button" = + ]; then 
    
    echo -e $'\e[1;34m' `expr $val_1 + $val_2`
   
      
elif [ "$button" = - ]; then

   echo -e $'\e[1;32m' `expr $val_1 - $val_2`
  

elif  [ "$button" = / ]; then

    if [ "$val_2" = 0 ]; then
        echo -e $'\e[1;35m' "Undefined"
    else
        echo -e $'\e[1;35m' `expr $val_1 / $val_2`
    fi

elif  [ "$button" = x ]; then

    echo -e $'\e[1;31m' $(( $val_1 * $val_2 | bc ))
  

else    
    echo "$val_1$val_2" 
    
fi


#References
#https://www.javatpoint.com/bash-arithmetic-operators
