# -------forloop1.sh 1------------

#!/bin/bash

for VAR in 1 2 3 4 5
do
   echo "Welcome $VAR times"
done

# -------forloop2.sh 2------------

#!/bin/bash

read -sp "Enter the password that you want to set to the users: " PASS echo""
for USERS in user1 user2 user3 user4 user5
do
    useradd $USERS
    echo "$PASS" | passwd --stdin $USERS
done 

# -------forloop3.sh 3------------

#!/bin/bash

for VAR in file1 file2 file3
do 
  echo $VAR
done

# -------forloop4.sh 4------------

#!/bin/bash

for USERS in $(cat users.txt);
do 
  echo $USERS
done

# -------forloop4.sh 5------------

#!/bin/bash

read -p "Enter the username: " USERNAME

for HOSTS in $(cat servers.txt);
do 
    ping -c2 $HOSTS &> /dev/null
if [ $? -eq 0 ];
then
    echo "$HOSTS is UP"
    ssh root@$HOSTS useradd $USERNAME
else
    echo "$HOSTS is DOWN"
fi
done