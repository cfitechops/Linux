# User Management and File Permissions

Create a User and Set a Password

```sh
useradd cfietch
passwd cfietch
```

Create and Modify File Permissions

```sh
touch facebook.txt
chmod o+rwx facebook.txt
```

Switch to the New User

```sh
su - cfietch
```

Log Out

```sh
logout
```

Modify File Contents

```sh
echo "hello admin sys" > facebook.txt
```

Create and Execute a Script

```sh
# vi /forloop.sh

#!/bin/bash
for names in user1 user2 user3
do
echo $names
done
```

```sh
cat /forloop.sh
chmod +x /forloop.sh
sh /forloop.sh
ls -ltr /forloop.sh
```

Switch to the New User and Execute Script

```sh
su - cfietch
sh /forloop.sh
```

Log Out Again

```sh
logout
```

File Permission Changes

```sh
touch /read.txt
chmod o-r /read.txt
chmod o+w /read.txt
```

Check Permissions

```sh
su - cfietch
ls -lrth
```
