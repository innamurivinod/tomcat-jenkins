# tomcat-jenkins
base image ubuntu 16.04 and tomcat/jenkins

Java 1.8 installization:
=======================

url: https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

java using no cookie link:
=========================

url : https://stackoverflow.com/questions/10268583/downloading-java-jdk-on-linux-via-wget-is-shown-license-page-instead

Set java path:
=============
vi /root/.bashrc
export JAVA_HOME=/root/jboss/jdk1.8.0_191
export PATH=$JAVA_HOME/bin:$PATH

java sample command:
====================

wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/jdk-8u191-linux-x64.tar.gz

Tomcat instalization in ubuntu 16.04 link:
=========================================
Url: https://www.liquidweb.com/kb/install-apache-tomcat-8-ubuntu-16-04/

jenkins jar file download link:
===============================
url : https://pkg.jenkins.io/debian-stable/

