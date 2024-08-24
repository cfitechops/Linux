# curl

curl -O https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.47/bin/apache-tomcat-7.0.47.tar.gz /opt/
ls -ltr
tar -xvf apache-tomcat-7.0.47.tar.gz -C /opt/
cd /opt/apache-tomcat-7.0.47/bin/
ls -ltr
sh catalina.sh start

curl localhost:8080

# find

find / -name "secure" -type f
find / -name "log" -type d

mkdir /var/log/mylogs
touch /var/log/mylogs/mylog{1..5}.log
ls -ltr /var/log/mylogs/
touch /var/log/mylogs/file.txt

find /var/log/mylogs -type f -name "*.log"
find /var/log/mylogs -type f -name "*.txt"
find /var/log/mylogs -type f -name "*.txt" -exec rm -f {} \;
find /var/log/mylogs -type f -name "*.txt"
find /var/log/mylogs -type f -name "*.log" -exec rm -f {} \;

wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.47/bin/apache-tomcat-7.0.47.tar.gz --no-check-certificate -P /opt/ 

ls -ltr
find /opt/ -type f -size +5M 
find /opt/ -type f -size +5M -exec rm -f {} \;
ls -ltr

# sed 

vi sample.txt

```sh
unix is free os\
unix is greate os
Hi
hello
how
are you
guyz
```
sed -e 's/unix/linux/' sample.txt
cat sample.txt
sed '1d' sample.txt
cat sample.txt
sed '$d' sample.txt
cat sample.txt
sed '1,3d' sample.txt
cat sample.txt
sed -n '2,4p' sample.txt
cat sample.txt
sed -i 's/unix/linux/' sample.txt
cat sample.txt
sed -e 's/free/paid/' -e 's/greate/bad/' sample.txt
cat sample.txt
sed -i -e 's/free/paid/' -e 's/greate/bad/' sample.txt
cat sample.txt

# grep

cat /etc/passwd | grep thierno

# nslookup

netstat -tulpn | grep -i listen

# dig

dig google.com
dig facebook.com
nslookup google.com

