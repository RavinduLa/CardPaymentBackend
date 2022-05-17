FROM openjdk:11
EXPOSE 8080

WORKDIR /app

COPY . .

RUN chmod 755 /app/mvnw
RUN ./mvnw dependency:go-offline -B
RUN ./mvnw package -DskipTests
RUN ls -al

ENTRYPOINT ["java","-jar","target/*.jar"]