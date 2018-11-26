FROM maven:alpine as build

COPY . .

RUN mvn clean install

FROM openjdk:8-alpine

COPY --from=build ./target/SpringRestService-0.0.1.jar ./target/runnable.jar

EXPOSE 8080

ENTRYPOINT  ["java", "-jar", "./target/runnable.jar"]
