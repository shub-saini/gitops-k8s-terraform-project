FROM maven:latest AS BUILD_IMAGE
WORKDIR /app
COPY . .
RUN mvn install 

FROM tomcat:latest
LABEL "Project"="gitopsproject"
LABEL "Author"="Shubham"
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=BUILD_IMAGE /app/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
