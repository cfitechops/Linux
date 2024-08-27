Create a new user and set a password

```sh
useradd cfitech
passwd cfitech
```

Switch to the new user

```sh
su - cfitech
```

Install git (this will fail since cfitech is not yet a /etc/sudoers or visudo)

```sh
yum install git -y
```

```sh
# sudo visudo or sudo nano /etc/sudoers or sudo vim /etc/sudoers

cfitech ALL=(ALL) NOPASSWD: ALL
%sudo   ALL=(ALL) NOPASSWD: ALL
```

```sh
yum install git -y
```

Exit back to the root user

```sh
exit
```
