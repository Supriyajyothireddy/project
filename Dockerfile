# pull base image
FROM tomcat:7-jdk8


#copy war file on to container
COPY devops.war /usr/local/tomcat/webapps

EXPOSE 8091
CMD ["catalina.sh","run"]

