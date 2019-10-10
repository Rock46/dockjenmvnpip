FROM tomcat:8.0
RUN mkdir /myApp
RUN chown -R root:root /myApp
VOLUME /myApp
RUN cp /usr/local/tomcat/webapps/:/var/lib/jenkins/workspace/Docker_Jenkins_Pip_Decl_4/target/hello-world-war-1.0.0.war myApp
COPY myapp /usr/local/tomcat/webapps/

