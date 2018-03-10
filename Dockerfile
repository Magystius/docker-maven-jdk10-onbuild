FROM maven:3-jdk-9-slim

MAINTAINER Tim Dekarz <tim.dekarz@[hidden]>

RUN mkdir -p /usr/src
WORKDIR /usr/src

ONBUILD ADD . /usr/src
ONBUILD RUN mvn clean package