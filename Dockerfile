FROM maven:3.6-jdk-11-slim AS build
COPY src /usr/src/app/src
COPY pom.xml /usr/src/app
RUN mvn -f /usr/src/app/pom.xml clean install -DskipTests
RUN mv `ls /usr/src/app/target/*.jar | head -n 1` /usr/src/app/target/app.jar

FROM openjdk:11
COPY --from=build /usr/src/app/target/app.jar /usr/app/app.jar
EXPOSE 8001
ENTRYPOINT ["java","-jar","/usr/app/app.jar"]