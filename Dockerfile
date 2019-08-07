FROM openjdk:11
RUN mv `ls /usr/src/app/target/*.jar | head -n 1` /usr/src/app/target/app.jar
COPY target/app.jar /usr/app/app.jar
EXPOSE 8001
ENTRYPOINT ["java","-jar","/usr/app/app.jar"]