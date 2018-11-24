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

setting tomcat username and password (manager-gui)
==================================================

1. vim /root/weblogic/apache-tomcat-8.5.35/conf/tomcat-user.xml 
====================
-->
<role rolename="manager-gui"/>
  <user username="tomcat" password="tomcat" roles="manager-gui"/>
<!--
  <role rolename="tomcat"/>
  <role rolename="role1"/>
  <user username="tomcat" password="<must-be-changed>" roles="tomcat"/>
  <user username="both" password="<must-be-changed>" roles="tomcat,role1"/>
  <user username="role1" password="<must-be-changed>" roles="role1"/>
-->

=========================

2. vim /root/weblogic/apache-tomcat-8.5.35/webapps/manager/META-INF/context.xml (uncomment)
==========================================
-->
<Context antiResourceLocking="false" privileged="true" >
<!-- (uncomment)
  <Valve className="org.apache.catalina.valves.RemoteAddrValve"
         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" />
  <Manager sessionAttributeValueClassNameFilter="java\.lang\.(?:Boolean|Integer|Long|Number|String)|org\.apache\.catalina\.filters\.CsrfPreventionFilter\$LruCache(?:\$1)?|java\.util\.(?:Linked)?HashMap"/>
--> (uncomment)
</Context>
=======================================

Tomcat ssl certification:
------------------------
Step 1: keytool –genkeypair  -alias mycert  -keyalng RSA –keystore  “e:\ssl\mycert.cert”
                After run this command in cmd promt it will ask like this
 

Step 2: Geeting secure tomcat page with (https) modify (server.xml ) file .
            <Connector port="8443" protocol="org.apache.coyote.http11.Http11Protocol"
               maxThreads="150" SSLEnabled="true" scheme="https" secure="true"
               clientAuth="false" sslProtocol="TLS"  keystore  “e:\ssl\mycert.cert”   
keystorepass=”pass123” />
step 3: we get like this
            https://localhost:8080


jenkins jar file download link:
===============================
url : https://pkg.jenkins.io/debian-stable/

