#------------VARIABLES.SH-------------

#!/bin/bash
VAR1=name
VAR2=thierno

echo $VAR1 $VAR2
echo ${VAR1} ${VAR2}

my_name=barry

echo $my_name

yourname=desire
echo ${yourname}

MY_WIFI=cfitech
echo $MY_WIFI


#------------QUOTES.SH-------------

#!/bin/bash
NAME=thierno

echo '$NAME'
echo "$NAME"


#-----------arguments.sh----------

#!/bin/bash
#### Print total arguments and their values

echo "Total Arguments: " $#  # is used to print total arguments
echo "All Arguments: " $@  # is used to print values of all arguments

echo "First -> " $1
echo "Second -> " $2
