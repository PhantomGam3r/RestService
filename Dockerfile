FROM maven:alpine as build

COPY . .

RUN mvn clean install

FROM maven:alpine

COPY --from=build target/demo-0.0.1-SNAPSHOT.jar .

EXPOSE 8080

ENTRYPOINT  ["java -jar demo-0.0.1-SNAPSHOT.jar"]
