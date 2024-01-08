FROM openjdk:17-jdk-slim

RUN useradd -r -u 999 doongu
RUN mkdir -p /doongu
RUN chown doongu /doongu

USER doongu
WORKDIR /doongu

ARG JAR_FILE=build/libs/petclinic.jar
COPY ${JAR_FILE} /doongu/petclinic.jar

ENTRYPOINT java -jar petclinic.jar
