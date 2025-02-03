# Use the official Maven image from the Docker Hub
FROM maven:3.9.9-eclipse-temurin-21-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the pom.xml file to the working directory
COPY . .

# Download the project dependencies and compile the project
RUN mvn dependency:go-offline && mvn clean compile && mvn -B test


# Specify the command to run the application
CMD ["sh"]