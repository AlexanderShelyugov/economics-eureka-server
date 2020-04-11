FROM adoptopenjdk/openjdk11:alpine-jre
ARG JAR_FILE=build/libs/economics-server-eureka-1.0-SNAPSHOT.jar
WORKDIR /opt/app
COPY ${JAR_FILE} app.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar","app.jar"]