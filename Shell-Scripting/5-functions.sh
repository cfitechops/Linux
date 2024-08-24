# -------functions.sh 1------------

#!/bin/bash

hello_world() {
    echo "hello, world"
}
hello_world

# -------functions.sh 2------------

#!/bin/bash

configure_tomcat(){
    echo "Configuring Apache Tomcat..."
    wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.47/bin/apache-tomcat-7.0.47.tar.gz -P /opt --no-check-certificate
    tar -xvf /opt/apache-tomcat-7.0.47.tar.gz -C /opt
    echo "Apache TOMCAT configuration complet!!"
}
#Function to configuration Apache Webserver
configure_webserver(){
    echo "Configuration Apache Webserver..."
    yum install httpd -y
    echo "Hello APACHE" >> /var/www/index.html
    systemctl start httpd
    systemctl enable httpd
    echo "Apache WEBSERVER configuration COMPLETD!!"
}
#Call to function
configure_tomcat
configure_webserver