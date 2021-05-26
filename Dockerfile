FROM centos
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN curl -O https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.94/bin/apache-tomcat-7.0.94.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-7.0.94/* /opt/tomcat/.
RUN yum -y install java
RUN java -version
WORKDIR /opt/tomcat/webapps
RUN curl -O -L http://3.238.122.134:8081/nexus/service/local/repositories/releases/content/com/web/cal/WebAppCal/1.2.1/WebAppCal-1.2.1.war



EXPOSE 8090
CMD [“/opt/tomcat/bin/catalina.sh”, “run”]
