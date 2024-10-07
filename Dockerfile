FROM maven:3.6.3-jdk-11

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package 

EXPOSE 8080

CMD ["sh", "-c", "java -jar /app/target/*.jar"]
