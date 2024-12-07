FROM debian:bookworm-slim AS builder
RUN apt-get update
RUN apt-get install -y \
    openjdk-17-jdk \
    maven
RUN mkdir /app
COPY src /app/src
COPY pom.xml /app
WORKDIR /app
RUN mvn clean package

FROM debian:bookworm-slim AS testing
RUN apt-get update
RUN apt-get install -y \
    openjdk-17-jdk \
    maven
CMD ["echo", "testing"]


FROM debian:bookworm-slim AS staging
RUN apt-get update && apt-get install -y openjdk-17-jdk-headless && apt-cache clean
COPY --from=builder /app/target/JPrint-1.0-SNAPSHOT.jar /JPrint-1.0-SNAPSHOT.jar
EXPOSE 8900
RUN adduser kostas
USER kostas
CMD ["java", "-jar", "/JPrint-1.0-SNAPSHOT.jar"]