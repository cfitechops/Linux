#-----------USER INPUT 1------------

#!/bin/bash
#Syntax : read [options] variable_name

echo "Enter your company name: "
read company_name
echo "Hello $company_name"


#-----------USER INPUT 2------------

#!/bin/bash

read -p "Enter your username" myname # -p is used to prompt some message with read command
read -sp "Enter your password : " mypassword # -s is used to input without displaying on screen

echo -e "\nYour Username is $myname and Password is &mypassword"

#-----------Arithmetic 3------------

#!/bin/bash

read -p "Enter Number one : " n1
read -p "Enter Number two : " n2

echo "Addition of $n1 + $n2 is = " $((n1+n2))
echo "Substraction of $n1 - $n2 is = " $((n1-n2))
echo "Division of $n1 / $n2 is = " $((n1/n2))
echo "Multiplication of $n1 * $n2 is = " $((n1*n2))