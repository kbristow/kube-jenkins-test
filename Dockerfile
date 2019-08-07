FROM openjdk:11
COPY target/app.jar /usr/app/app.jar
EXPOSE 8001
ENTRYPOINT ["java","-jar","/usr/app/app.jar"]