FROM maven:3.6.3-jdk-11 as BUILD

COPY src /usr/src/myapp/src
COPY pom.xml /usr/src/myapp
RUN mvn -f /usr/src/myapp/pom.xml clean package 
# RUN    ls /usr/src/myapp/target/

FROM adoptopenjdk/openjdk11:ubuntu-jre

COPY --from=BUILD /usr/src/myapp/target/spring-boot-web-0.0.1-SNAPSHOT.jar /app.jar
# RUN ls /
ENTRYPOINT ["java","-jar","/app.jar"]
