# SERVER 1

yum install vsftpd ftp -y
systemctl start vsftpd
systemctl enable vsftpd
systemctl status vsftpd
useradd ftpuser
passwd ftpuser
touch ftp.txt

vim /etc/vsftpd/vsftpd.conf

```sh
listen_ipv6=YES
pam_service_name=vsftpd
userlist_enable=YES
tcp_wrappers=YES

allow_writeable_chroot=YES
```

systemctl restart vsftpd
ifconfig

ftp <IP SERVER 1>
(ftpuser, password)

put ftp.txt
quit

# SERVER 2

yum list installed | grep ftp
yum install ftp telnet -y
firewall-cmd --permanent --add-port=21/tcp
firewall-cmd --reload 
telnet <IP SERVER 1> 
ftp <IP SERVER 1>
(ftpuser, password)
ls
get ftp.txt
quit

