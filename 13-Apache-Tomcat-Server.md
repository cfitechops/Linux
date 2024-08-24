# Download, install, and configure Apache Tomcat 7.0.47

Download Tomcat

```sh
wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.47/bin/apache-tomcat-7.0.47.tar.gz --no-check-certificate
```

Extract Tomcat Archive

```sh
tar -xvf apache-tomcat-7.0.47.tar.gz -C /opt/
```

Navigate to Tomcat Bin Directory

```sh
cd /opt/apache-tomcat-7.0.47/bin/
```

Check Running Tomcat Processes

```sh
ps -ef | grep tomcat
```

Start Tomcat

```sh
sh catalina.sh start
```

Verify Tomcat is Running

```sh
ps -ef | grep tomcat
```

Check Network Listening Ports

```sh
netstat -tulpn
```

Check Tomcat Port

```sh
netstat -tulpn | grep tomcat
```

Verify Tomcat Web Interface

```sh
curl localhost:8080
```

Open Tomcat Web Interface in Firefox

```sh
firefox
```

Stop Tomcat

```sh
sh catalina.sh stop
```

Verify Tomcat Has Stopped

```sh
curl localhost:8080
```

Check Tomcat Processes Again

```sh
ps -ef | grep tomcat
```

Create a JSP File

```sh
# vi index.jsp

Hello Tomcat this is cloud tech cfitech
```

Install Java Development Kit

```sh
yum install java-devel -y
```

Package JSP as WAR File

```sh
jar -cvf index.war index.jsp
```

Deploy WAR File to Tomcat

```sh
cp index.war /opt/apache-tomcat-7.0.47/webapps/
```

Restart Tomcat

```sh
cd /opt/apache-tomcat-7.0.47/bin/
sh catalina.sh start
```

Verify WAR File Deployment

```sh
ls -ltrh ../webapps/
```

Access Deployed Application

```sh
http://localhost:8080/index/
```

Check Tomcat Logs

```sh
ls ../logs/
cd .. ; pwd  ; ls -ltrh ../logs/
```

Tail Tomcat Access Log

```sh
tail -100f logs/localhost_access_log.2024-02-19.txt
```

Kill Tomcat Process

```sh
ps -ef | grep tomcat  #---> (root 4298)

kill -9 4298
```

Verify Tomcat Process Termination

```sh
ps -ef | grep tomcat
```

Restart Tomcat After Killing

```sh
/opt/apache-tomcat-7.0.47/bin/catalina.sh start
```

Use pkill to Stop Tomcat

```sh
pkill -9 -f /opt/apache-tomcat-7.0.47/
```

Verify No Tomcat Processes

```sh
ps -ef | grep tomcat
```

Check Network Listening Ports

```sh
netstat -tulpn
```

Change Tomcat Port

```sh
cd /opt/apache-tomcat-7.0.47/conf/

# vi server.xml


# Edits server.xml to change Tomcat's HTTP port from 8080 to 9090.
<Connector port="9090" protocol="HTTP/1.1">
           connectionTimeout="20000"
           redirectPort="8443" />

```

Restart Tomcat with New Port

```sh
cd ../bin/
sh catalina.sh start
```

Access Tomcat on New Port

```sh
http://localhost:9090/index/
```

Revert Tomcat Port Change

```sh
cd /opt/apache-tomcat-7.0.47/conf/

# vi server.xml

# Edits server.xml to change Tomcat's HTTP port from 9090 to 8080.
<Connector port="8080" protocol="HTTP/1.1">
           connectionTimeout="20000"
           redirectPort="8443" />
```

Restart Tomcat After Reverting Port

```sh
cd ../bin/
sh catalina.sh stop
sh catalina.sh start
```

Check Network Listening Ports Again

```sh
netstat -tulpn
netstat -tulpn | grep -i listen
```
