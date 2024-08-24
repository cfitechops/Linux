# ----------------multiple_conditions.sh------------------------

#!/bin/bash

read -p "Enter First Number : " VAR1
read -p "Enter Second Number : " VAR2
read -p "Enter Third Number : " VAR3

if [[ $VAR1 -ge $VAR2 ]] && [[ $VAR1 -ge $VAR3 ]]
then
    echo "VAR1 $VAR1 is the largest number"
elif [[ $VAR2 -ge $VAR1 ]] && [[ $VAR2 -ge $VAR3 ]]
then
    echo "VAR2 $VAR2 is the largest number"
else
    echo "VAR3 is the largest number"
fi

# ----------------equal.sh------------------------

#!/bin/bash

read -p "Enter First Number : " VAR1
read -p "Enter Second Number : " VAR2

if [[ "$VAR1" == "$VAR2" ]]; 
then
   echo "The Strings are Equal"
else
   echo "Strings are not Equal"
fi

# -----------------file_exit.sh-----------------------

#!/bin/bash

FILE=/etc/resolv.conf
if [ -f "$FILE" ]; 
then
   echo "$FILE exist"
fi