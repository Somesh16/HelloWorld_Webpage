FROM tomcat:8.0.20-jre8
MAINTAINER Somesh
RUN sed -i '/<\/tomcat-users>/ i\<user username="Somesh" password="Somesh" roles="admin-gui,manager-gui"/>' /usr/local/tomcat/conf/tomcat-users.xml
COPY ./Hello_World-0.0.1-SNAPSHOT.war  /usr/local/tomcat/webapps/Hello_World-0.0.1-SNAPSHOT.war
