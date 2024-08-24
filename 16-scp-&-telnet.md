# ------telnet------

# SERVER 1
sudo su
yum install telnet -y
ssh root@<IP SERVER 2> 
logout

# SERVER 2
netstat -tulpn | grep -i listen
systemctl stop sshd
systemctl status sshd
netstat -tulpn | grep -i listen
systemctl start sshd

# SERVER 1
telnet <IP SERVER 2> 22
ssh root@<IP SERVER 2> 
logout

# ------scp------

touch server2.txt
scp server2.txt server2@<IP SERVER 2>:/home/server2

# SERVER 2
ls -ltr /home/server2/

# SERVER 1
scp server2.txt server2@<IP SERVER 2>:/tmp/

# SERVER 2
ls -ld /tmp/