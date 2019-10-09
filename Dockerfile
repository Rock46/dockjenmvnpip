FROM tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY /var/lib/docker/tmp/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]
