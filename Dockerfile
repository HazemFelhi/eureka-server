# Use the official OpenJDK 11 image as the base image
FROM docker.io/openjdk:17-oracle

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/Eureka-Server-0.0.1-SNAPSHOT.jar /app/eureka-server.jar

# Expose the port that your Spring Boot application is listening on (if needed)
EXPOSE 8761

# Run the Spring Boot application when the container starts
CMD ["java", "-jar", "eureka-server.jar"]
