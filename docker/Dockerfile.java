# docker/Dockerfile.java
FROM openjdk:21
WORKDIR /app
COPY . .
CMD ["./gradlew", "test"]