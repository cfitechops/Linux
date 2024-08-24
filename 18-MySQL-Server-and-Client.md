# SERVER 1

hostnamectl set-hostname server1.example.com
bash
echo "192.168.129.31 server1.example.com" >> /etc/hosts
ls -lrth /etc/yum.repos.d/
cat /etc/hosts
yum localinstall https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm -y
rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
yum install mysql-community-server -y

# SERVER 2

hostnamectl set-hostname server2.example.com
bash
echo "192.168.129.32 server2.example.com" >> /etc/hosts
ls -lrth /etc/yum.repos.d/

# SERVER 1

systemctl start mysqld
systemctl enable mysqld
systemctl status mysqld

grep 'temporary password' /var/log/mysqld.log
mysql_secure_installation
(Enter, passwdor , y , y , y , y , y)

mysql -u root -p

show databases;
CREATE DATABASE `new-database`;
show databases;
use new-database;
CREATE USER 'newuser'@'%' IDENTIFIED BY 'Newuser@1234';
GRANT ALL PRIVILEGES ON *.* TO 'newuser'@'%';
quit

rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022

# SERVER 2

yum localinstall https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm -y
rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
yum install mysql-community-client -y
systemctl start mysqld
systemctl enable mysqld
systemctl status mysqld

yum install telnet -y

telnet <IP SERVER 1> 3306
J
(2mysql_native_passwordNewuser@1234

mysql -u newuser -p -h <IP SERVER 1> --port 3306
show databases;

# SERVER 1

firewall-cmd --reload 
firewall-cmd --permanent --add-port=3306/tcp

# SERVER 2
use new-database;
CREATE TABLE address (id INT PRIMARY KEY, name VARCHAR(30), addr VARCHAR(30) );
SHOW TABLES;
quit
