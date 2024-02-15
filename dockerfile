FROM openjdk:8-jre-slim
# Set the working directory inside the container
WORKDIR /app
# Copy the JAR file from the host machine into the container at /app
COPY . .
# Specify the command to run your application
CMD ["java", "-jar", "test.jar"]