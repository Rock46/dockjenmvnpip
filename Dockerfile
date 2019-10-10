FROM tomcat:8.0
RUN rm -fr /usr/local/tomcat/webapps/ROOT
RUN -v /Docker_Jenkins_Pip_Decl_4/target/hello-world-war-1.0.0.war:/usr/local/tomcat/webapps/ROOT.war tomcat:8.0


