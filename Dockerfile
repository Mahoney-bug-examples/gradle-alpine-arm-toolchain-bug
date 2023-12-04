FROM eclipse-temurin:21.0.1_12-jre-alpine as base

WORKDIR /usr/local/gradle-alpine-arm-bug

COPY . .

RUN ./gradlew --version



FROM base

RUN ./gradlew tasks
