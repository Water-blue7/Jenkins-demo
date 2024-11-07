FROM eclipse-temurin:17-jre-alpine
EXPOSE 8080

WORKDIR /root

ADD jarfile/Jenkins-demo*.jar /root/app.jar
ENTRYPOINT ["java","-jar","/root/app.jar"]