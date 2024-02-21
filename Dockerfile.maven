FROM ubuntu:18.04
RUN apt update -y
RUN apt install -y git maven wget
WORKDIR /boxfuse
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /boxfuse/boxfuse-sample-java-war-hello
RUN mvn package
