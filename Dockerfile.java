FROM ubuntu:14.04
MAINTAINER innamurivinod@gmail.com
COPY jdk-8u191-linux-x64.tar.gz /opt/
WORKDIR /opt/
RUN ls -alrt
ENV JAVA_HOME=/opt/jdk1.8.0_191
ENV PATH=$JAVA_HOME/bin:$PATH
CMD /bin/bash
 
