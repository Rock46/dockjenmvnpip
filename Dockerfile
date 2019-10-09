FROM tomcat:8.0.51-jre8-alpine
WORKDIR /app
RUN rm -rf /usr/local/tomcat/webapps/*
RUN cp /app/target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]
