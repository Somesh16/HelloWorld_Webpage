FROM tomcat:8.0.20-jre8
MAINTAINER Somesh
COPY target/Hello_World-0.0.1-SNAPSHOT.war  /usr/local/tomcat/webapps/Hello_World-0.0.1-SNAPSHOT.war
