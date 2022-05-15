FROM openjdk:11
ADD deploy-jars/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]