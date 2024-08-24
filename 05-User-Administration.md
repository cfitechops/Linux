# USER ADMINISTRATION

Viewing the /etc/passwd File

```sh
root:x:0:0:root:/root:/bin/bash
```

Creating and Managing Users

```sh
useradd newuser
```

useradd newuser

```sh
cat /etc/passwd
cat /etc/passwd | grep newuser

passwd newuser
```

Setting a Password from Standard Input

```sh
echo "redhat" | passwd --stdin testing
```

Creating Users with Custom Home Directories

```sh
useradd -d /opt/myuser myuser
ls -lrth /opt
```

Checking User Accounts

```sh
cat /etc/passwd | grep myuser
```

Switching Users

```sh
su - myuser
exit
```

Creating Users with Specific User IDs

```sh
useradd -u 2500 fedorauser
id -u fedorauser
```

Managing User Groups

```sh
groupadd calsoft
cat /etc/group | grep calsoft

useradd -G calsoft -c "DevOps Engineer" cfitech
cat /etc/passwd | grep cfitech
cat /etc/group | grep cfitech
```

Modifying User Accounts

```sh
useradd -s /sbin/nologin tester
cat /etc/passwd | grep tester

usermod -s /bin/bash tester
su - tester
logout
```

Updating User Comments:

```sh
cat /etc/passwd | grep cfitech
usermod -c "Professional Sys Admin Consultant" cfitech
cat /etc/passwd | grep cfitech
cat /etc/group | grep cfitech
```

Managing and Deleting Users and Groups

```sh
gpasswd -d cfitech calsoft
cat /etc/group | grep calsoft
groupdel calsoft
cat /etc/group calsoft

userdel testing
userdel cfitech
userdel -r myuser
rm -fr /home/testing
```
