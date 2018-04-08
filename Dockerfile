FROM microsoft/aspnetcore-build:2.0

RUN apt-get update && \
    apt-get install -y \
      openjdk-8-jdk \
      ant \
      nuget \
      ca-certificates-java && \
    apt-get clean;

RUN apt-get clean && \
    update-ca-certificates -f;

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

