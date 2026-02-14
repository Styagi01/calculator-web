# Use official OpenJDK 17 (Eclipse Temurin)
FROM eclipse-temurin:17-jdk

# Set working directory inside container
WORKDIR /app

# Copy Maven wrapper and project files
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

# Give execute permission to mvnw
RUN chmod +x mvnw

# Build the Spring Boot application (skip tests to speed up)
RUN ./mvnw clean package -DskipTests

# Copy the built JAR into the container
COPY target/calculator-web-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080 (Spring Boot default)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java","-jar","/app/app.jar"]