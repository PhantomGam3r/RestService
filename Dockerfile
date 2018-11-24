FROM maven/jdk-8-alpine as build

RUN mvn clean install

FROM maven/jdk-8-alpine

COPY --from=build target/demo-0.0.1-SNAPSHOT.jar .

EXPOSE 8080

CMD ["java -jar demo-0.0.1-SNAPSHOT.jar"]
