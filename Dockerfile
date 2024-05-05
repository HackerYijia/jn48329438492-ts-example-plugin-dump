FROM ubuntu:latest AS build

RUN apt-get update
RUN apt-get install openjdk-11-jdk -y

EXPOSE 25565
EXPOSE 8081
EXPOSE 443
EXPOSE 8443
EXPOSE 22

COPY . .
CMD ["ls"]
CMD ["java", "-jar", "bungeecord.jar"]
