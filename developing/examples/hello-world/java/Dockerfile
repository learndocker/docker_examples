FROM openjdk:8u151-jdk-alpine

WORKDIR /usr/share/myapp
COPY HelloWorld.java .

RUN javac HelloWorld.java
CMD ["java", "HelloWorld"]
