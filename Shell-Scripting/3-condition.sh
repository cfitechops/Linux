#-----------if.sh 1------------

#!/bin/bash
# This script will check the variable is greater then 10 or not

read -p "Enter a number: " VAR

if [[ $VAR -gt 10 ]]
then
    echo "The number/Variable is greater than 10"
fi


#-----------if_else.sh 2------------

#!/bin/bash

read -p "Enter a number : " VAR

if [[ $VAR -gt 10 ]]
then
      echo "The number is greater than 10"
else 
      echo "The number is equal or less than 10"
fi

#-----------if_else_if.sh 3------------

#!/bin/bash

read -p "Enter a number : " VAR

if [[ $VAR -gt 10 ]]
then
        echo "The number $VAR is greater than 10"
elif [[ $VAR -eq 10 ]]
then  
        echo "The number is 10"
else
        echo "The number is less than 10"
fi


#-----------multiple_file_exists.sh 4------------

#!/bin/bash

if [ -f /etc/resolv.conf -a -f /etc/hosts ]; then
       echo "Both files exists"
else
       echo "Both files doesn't exist"
fi

#-----------directory_exists.sh 5------------

#!/bin/bash

DIR=/tmp

if [ -d "$DIR" ]; then
       echo " $DIR exist "
else
       echo " $DIR does not exist "
fi

#-----------variable_empty.sh 6------------

#!/bin/bash

read -p "Enter the variable value: " VAR

if [-z "$VAR"]
then
    echo " $VAR is empty"
else
    echo " $VAR is not empty"
fi 

#-----------variable_not_empty.sh 7------------

#!/bin/bash

read -p "Enter the Username that you want to delete: " USERNAME

USERVAR=" $(cat /etc/passwd | grep $USERNAME | cut -d ":" -f 1)"

if [-n "$USERVAR"];

then 
    echo "$USERVAR user is exist i am deleting it"
    userdel -r $USERVAR
else
    echo " $USERVAR not exist"
fi


#-----------less_then_empty.sh 8------------

#!/bin/bash
read -p "Enter a number : " VAR

if [[ $VAR -lt 10 ]]; then
    echo " The variable $VAR is less then 10 "
elif [[ $VAR -le 10 ]]; then
    echo " The variable $VAR is equal to 10 "
else
    echo " The variable $VAR is not less or equal to 10 "
fi

#-----------file_executable.sh 9------------

#!/bin/bash

read -p "Enter the filename : " FILE

if [[ -x "$FILE" ]]; then
    echo "File $FILE is executable"
else
    echo "File $FILE is not executable"
fi
