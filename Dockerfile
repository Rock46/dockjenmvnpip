FROM tomcat:8.0
RUN docker volume create myApp
COPY ./Docker_Jenkins_Pip_Decl_4/target/hello-world-war-1.0.0.war myApp
RUN --mount source=myApp,destination=/usr/local/tomcat/webapps/ tomcat:8.0

