FROM tomcat:8.0
COPY /Docker_Jenkins_Pip_Decl_4/target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/

