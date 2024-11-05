FROM openjdk:17
EXPOSE 8080

WORKDIR /root

ADD springboot/jarfile/Jenkins-demo*.jar /root/app.jar
ENTRYPOINT ["java","-jar","/root/app.jar"]