FROM openjdk:11
COPY target/*.jar /usr/app/
RUN mv `ls /usr/app/*.jar | head -n 1` /usr/app/app.jar
EXPOSE 8001
ENTRYPOINT ["java","-jar","/usr/app/app.jar"]