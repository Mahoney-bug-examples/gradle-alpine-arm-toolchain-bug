FROM eclipse-temurin:23_37-jdk-alpine AS base

WORKDIR /usr/local/gradle-alpine-arm-sysinfo-bug

COPY . .

RUN ./gradlew --version

From base

ENV GRADLE_OPTS="\
-Dorg.gradle.daemon=false \
-Dorg.gradle.logging.stacktrace=all \
-Dorg.gradle.vfs.watch=false \
-Dorg.gradle.console=plain \
"

RUN ./gradlew build
