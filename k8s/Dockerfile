FROM openjdk:11-jre-slim-alpine
EXPOSE 8080

WORKDIR /root

ADD jarfile/Jenkins-demo*.jar /root/app.jar
ENTRYPOINT ["java","-jar","/root/app.jar"]