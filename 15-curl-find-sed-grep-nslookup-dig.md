# Downloading and Extracting Apache Tomcat

**curl**

```sh
curl -O https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.47/bin/apache-tomcat-7.0.47.tar.gz
tar -xvf apache-tomcat-7.0.47.tar.gz -C /opt/
cd /opt/apache-tomcat-7.0.47/bin/
sh catalina.sh start
```

Check Tomcat Status

```sh
curl localhost:8080
```

**find**

Find Files and Directories

```sh
find / -name "secure" -type f  # for files

find / -name "log" -type d   # for directories
```

Create Logs and Files

```sh
mkdir /var/log/mylogs
touch /var/log/mylogs/mylog{1..5}.log
```

Find and Remove Files

```sh
find /var/log/mylogs -type f -name "*.log"
find /var/log/mylogs -type f -name "*.txt" -exec rm -f {} \;
find /var/log/mylogs -type f -name "*.log" -exec rm -f {} \;
```

**sed**

Edit Files with sed

```sh
# vi sample.txt

unix is free os
unix is greate os
Hi
hello
how
are you
guyz
```

```sh
sed -e 's/unix/linux/' sample.txt

# Replaces the first occurrence of unix with linux in sample.txt
sed '1d' sample.txt

# Deletes the first line
sed '$d' sample.txt

# Deletes the last line
sed '1,3d' sample.txt

# Deletes lines 1 through 3
sed -n '2,4p' sample.txt

# Prints lines 2 through 4
sed -i 's/unix/linux/' sample.txt

# In-place replacement of unix with linux
sed -e 's/free/paid/' -e 's/greate/bad/' sample.txt
```

**grep**

Searching with grep

```sh
cat /etc/passwd | grep <USER>
```

**nslookup**

```sh
nslookup google.com
```

**dig**

```sh
dig google.com
```

Check Listening Ports:

```sh
# Lists all listening ports and services
netstat -tulpn | grep -i listen
```
