From tomcat:8.0
MAINTAINER admin@dockerContainer.com
RUN apt-get update
RUN apt-get install curl -y
RUN apt-get install unzip
RUN curl -X GET -u admin:admin http://172.17.0.2:8081/repository/devops_demo_artifactory/addressbook/addressbook/1.0/addressbook-1.0.zip -O --insecure
RUN unzip addressbook-1.0.zip
RUN cp addressbook-2.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
