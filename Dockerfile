# Use a base image with Java installed
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the built application
COPY target/*.jar app.jar

# Define the entry point to run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
