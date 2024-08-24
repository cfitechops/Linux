yum install httpd -y
systemctl start httpd.service
systemctl enable httpd.service
systemctl status httpd.service

netstat -tulpn | grep -i listen

curl localhost

http://192.168.129.2

syetemctl status firewalld
firewall-cmd --list-all
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --reload

vi /var/www/html/index.html

```sh
Hello this is website deployed by cfitech Apache web server!!!
```

vi /etc/httpd/conf/httpd.conf

# search DocumentRoot