# docker/Dockerfile.java
FROM maven:3.8.1-jdk-11
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean install
CMD ["mvn", "test"]