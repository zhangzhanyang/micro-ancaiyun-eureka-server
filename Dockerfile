FROM maven:3.5.0-jdk-8-alpine

LABEL maintainer "yann.xia@daocloud.io"

WORKDIR /project
ADD . /project

RUN mvn install -Dmaven.test.skip=true
CMD ["mvn"]