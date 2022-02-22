#!/bin/bash
#ddrage0 Week4.5 13/02/2022
#IP Address Only

source ../Week4/IpInfo.sh  | sed -n 's/IP Address: /IP Address: /p'

#References
#https://www.gnu.org/software/sed/manual/sed.html
