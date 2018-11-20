FROM ubuntu16.04/java
MAINTAINER innamurivinod@gmail.com
COPY  apache-tomcat-8.5.35.tar.gz /opt/
WORKDIR /opt/
RUN tar -xvzf apache-tomcat-8.5.35.tar.gz
ENV CATALINA_HOME=/opt/apache-tomcat-8.5.32
RUN ls -alrt
COPY jenkins.war /opt/apache-tomcat-8.5.35/webapps/jenkins.war
EXPOSE 8080
#WORKDIR /opt/apache-tomcat-8.5.35/bin
CMD /bin/bash 
