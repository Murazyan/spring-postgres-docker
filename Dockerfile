#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim as build
COPY . /home/app
WORKDIR /home/app
RUN mvn clean install

#
# Add jar file
#
FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/spring-postgres-docker-0.0.1.jar spring-postgres-0.0.1.jar
EXPOSE 8080:8080
ENTRYPOINT ["java", "-jar", "spring-postgres-0.0.1.jar"]

