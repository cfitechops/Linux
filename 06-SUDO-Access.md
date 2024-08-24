Create a new user and set a password

```sh
useradd cfitech
passwd cfitech
```

Switch to the new user

```sh
su - cfitech
```

Install vsftpd (this will fail since cfitech is not yet a sudoer)

```sh
yum install vsftpd -y
```

Exit back to the root user

```sh
exit
```

Add the new user to the sudoers file

```sh
usermod -aG wheel cfitech  # Corrected to use -aG to append the group
```

Verify the user group membership

```sh
cat /etc/group | grep cfitech
```

Switch back to the new user with sudo privileges

```sh
su - cfitech
```

Try to list the /root directory (this will fail due to permissions)

```sh
ls /root
```

Install vsftpd using sudo

```sh
sudo yum install vsftpd -y
```

Create a file (or directory) in the /root directory using sudo

```sh
sudo touch /root/myfile.txt  # Corrected to use touch for a file
```
