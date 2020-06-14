FROM tomcat:8.0
RUN rm -fr /usr/local/tomcat/webapps/ROOT
COPY ./target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh", "run"]
