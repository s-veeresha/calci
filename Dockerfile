
# Use Maven with Java 17
FROM maven:3.9.9-eclipse-temurin-17

# Set working directory
WORKDIR /app

# Copy Maven project files
COPY pom.xml .

COPY src ./src

# Build the Maven project
RUN mvn clean package -DskipTests

# Run Maven tests when container starts
CMD ["mvn", "test"]
