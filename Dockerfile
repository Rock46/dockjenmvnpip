FROM maven:3-alpine as build
WORKDIR /app
RUN git clone https://github.com/Rock46/dockjenmvn.git
RUN mvn clean package

FROM tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=build /app/target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]
