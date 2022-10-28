FROM gradle:7.5.1-jdk11-alpine
COPY . .
RUN gradle build
ENTRYPOINT ["java", "-jar", "build/libs/javachat-0.0.1-SNAPSHOT.jar"]