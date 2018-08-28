From 10.253.127.140/cicd/jdk8tomcat:7.0
ADD ./target/tomcat_maven.war /usr/local/apache-tomcat-7.0.79/webapps/
CMD sh /usr/local/apache-tomcat-7.0.79/bin/catalina.sh run