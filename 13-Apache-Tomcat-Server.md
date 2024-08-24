wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.47/bin/apache-tomcat-7.0.47.tar.gz --no-check-certificate
tar -xvf apache-tomcat-7.0.47.tar.gz -C /opt/
cd /opt/apache-tomcat-7.0.47/bin/
ps -ef | grep tomcat
sh catalina.sh start
ps -ef | grep tomcat
netstat -tulpn
netstat -tulpn | grep tulpn
netstat -tulpn | grep tomcat
curl localhost:8080
firefox
sh catalina.sh stop
curl localhost:8080
ps -ef | grep tomcat
cd

vi index.jsp

```sh
Hello Tomcat this is cloud tech cfitech
```

yum install java-devel -y
jar
jar -cvf index.war index.jsp

cp index.war /opt/apache-tomcat-7.0.47/webapps/
cd /opt/apache-tomcat-7.0.47/bin/
sh catalina.sh start
ls -ltrh ../webapps/

http://localhost:8080/index/

ls ../logs/
cd .. ; pwd  ; ls -ltrh ../logs/

tail -100f logs/localhost_access_log.2024-02-19.txt

ps -ef | grep tomcat  (root 4298)
kill -9 4298
ps -ef | grep tomcat
/opt/apache-tomcat-7.0.47/bin/catalina.sh start
ps -ef | grep tomcat
pkill -9 -f /opt/apache-tomcat-7.0.47/
ps -ef | grep tomcat
netstat -tulpn
/opt/apache-tomcat-7.0.47/bin/catalina.sh start
netstat -tulpn

ps -ef | grep tomcat

/opt/apache-tomcat-7.0.47/bin/catalina.sh stop

cd /opt/apache-tomcat-7.0.47/conf/
ls -ltrh

vi server.xml

```sh
# change 8080 --> 9090
<Connector port="9090" protocol="HTTP/1.1">
           connectionTimeout="20000"
           redirectPort="8443" />
```

cd ../bin/
sh catalina.sh start

http://localhost:9090/index/

cd /opt/apache-tomcat-7.0.47/conf/

vi server.xml

```sh
# change 9090 --> 8080
<Connector port="8080" protocol="HTTP/1.1">
           connectionTimeout="20000"
           redirectPort="8443" />
```

cd ../bin/
sh catalina.sh stop
sh catalina.sh start
netstat -tulpn
netstat -tulpn | grep -i listen
