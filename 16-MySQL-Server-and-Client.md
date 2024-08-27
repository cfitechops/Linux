# MYSQL server and client

### SERVER 1: Setup MySQL Server

```sh
# Set Hostname
hostnamectl set-hostname server1.example.com

# Update /etc/hosts
echo "<IP> server1.example.com" >> /etc/hosts

# Install MySQL Repository
yum localinstall https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm -y

# Import MySQL GPG Key (Imports the GPG key for package verification)
rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022

# Install MySQL Server
yum install mysql-community-server -y

# Start and Enable MySQL Service
systemctl start mysqld
systemctl enable mysqld
systemctl status mysqld

# Get Temporary MySQL Root Password
grep 'temporary password' /var/log/mysqld.log

# Secure MySQL Installation
mysql_secure_installation

# Log in to MySQL
mysql -u root -p

# Create Database and User
show databases;
CREATE DATABASE `new-database`;
show databases;
use new-database;
CREATE USER 'newuser'@'%' IDENTIFIED BY 'Newuser@1234';
GRANT ALL PRIVILEGES ON *.* TO 'newuser'@'%';
quit

# Add Firewall Rule
firewall-cmd --reload
firewall-cmd --permanent --add-port=3306/tcp
```

### SERVER 2: Connect to MySQL Server

```sh
# Set Hostname
hostnamectl set-hostname server2.example.com

# Update /etc/hosts
echo "<IP> server2.example.com" >> /etc/hosts

# Install MySQL Client
yum localinstall https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm -y
rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
yum install mysql-community-client -y

# Install Telnet (Optional)
yum install telnet -y

# Test Connectivity
telnet <IP SERVER 1> 3306

# Connect to MySQL (Connects to the MySQL server on SERVER 1 using the newuser account)
mysql -u newuser -p -h <IP SERVER 1> --port 3306

# Create Table in New Database
use new-database;
CREATE TABLE address (id INT PRIMARY KEY, name VARCHAR(30), addr VARCHAR(30));
SHOW TABLES;
quit
```
