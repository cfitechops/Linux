# Apache HTTP server on a Linux system

Install Apache HTTP Server

```sh
yum install httpd -y
```

Start Apache HTTP Server

```sh
systemctl start httpd.service
```

Enable Apache to Start on Boot

```sh
systemctl enable httpd.service
```

Check the Status of Apache HTTP Server

```sh
systemctl status httpd.service
```

Check Listening Ports

```sh
netstat -tulpn | grep -i listen
```

Verify Apache is Serving Content

```sh
curl localhost
```

Access Apache from a Specific IP

```sh
http://<IP>
```

Check Firewalld Status

```sh
systemctl status firewalld
```

List All Firewall Rules

```sh
firewall-cmd --list-all
```

Open Port 80 in Firewall

```sh
firewall-cmd --permanent --add-port=80/tcp
```

Reload Firewall Rules

```sh
firewall-cmd --reload
```

Create a Custom Web Page

```sh
# vi /var/www/html/index.html

Hello this is website deployed by cfitech Apache web server!!!
```

Configure Apache DocumentRoot

```sh
vi /etc/httpd/conf/httpd.conf
```
