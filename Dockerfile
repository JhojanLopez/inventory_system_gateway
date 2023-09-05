FROM gradle:8-jdk17-alpine AS build

WORKDIR /app

COPY build.gradle settings.gradle ./

COPY src ./src

RUN gradle bootJar

FROM amazoncorretto:17.0.0-alpine

WORKDIR /app

COPY --from=build /app/build/libs/*.jar gateway.jar

EXPOSE 8090

CMD ["java", "-jar", "gateway.jar"]
