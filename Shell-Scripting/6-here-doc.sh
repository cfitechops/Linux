#!/bin/bash

cat <<EOF
        The current working directory is : $PWD
        You are logged in as : $(whoami)
EOF

# ------------------------------

#!/bin/bash

cat <<-"EOF"
        The current working directory is : $PWD
        You are logged in as : $(whoami)
EOF

# ---------------------------------

#!/bin/bash

cat <<EOF > file.txt
        The current working dir is : $PWD
        You are logged in as : $(whoami)
EOF

# ---------------------------------

#!/bin/bash

read -p "Enter username: " USERNAME
read -sp "Enter Password : " PASSWORD

sshpass -p $PASSWORD ssh -tt $USERNAME@192.168.129.2 << EOF
yum install httpd -y
echo "WELCOME TO WEBSERVER" > /var/www/html/index.html
systemctl start httpd
systemctl enable httpd

logout
EOF