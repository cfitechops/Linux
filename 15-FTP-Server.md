# FTP

### On SERVER 1

Setup FTP Server on SERVER 1

```sh
# Install vsftpd and FTP Client
yum install vsftpd ftp -y

# Start and Enable vsftpd Service
systemctl start vsftpd
systemctl enable vsftpd
systemctl status vsftpd

# Create FTP User
useradd ftpuser
passwd ftpuser

# Create a Test File
touch ftp.txt
```

Configure vsftpd

```sh
# vim /etc/vsftpd/vsftpd.conf

listen_ipv6=YES
pam_service_name=vsftpd
userlist_enable=YES
tcp_wrappers=YES

allow_writeable_chroot=YES
```

```sh
# Restart vsftpd
systemctl restart vsftpd

ifconfig

# Test FTP Upload
ftp <IP SERVER 1>

# Upload the test file
put ftp.txt

# Quit the FTP session
quit
```

### On SERVER 2

Setup FTP Client on SERVER 2

```sh
# Install FTP and Telnet Client
yum list installed | grep ftp
yum install ftp telnet -y

# Configure Firewall
# Opens port 21 (FTP) on SERVER 2’s firewall to allow FTP connections
firewall-cmd --permanent --add-port=21/tcp
firewall-cmd --reload

# Test Connectivity Using Telnet
telnet <IP SERVER 1>

# Test FTP Connection
ftp <IP SERVER 1>

# List files on the FTP server
ls

# Download the test file
get ftp.txt

# Quit the FTP session
quit
```
