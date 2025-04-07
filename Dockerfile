# Etapa 1: Construcción de la aplicación
FROM maven:3.9.6-eclipse-temurin-17 as builder

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos pom.xml y descarga dependencias
COPY pom.xml .
COPY src ./src

# Empaqueta la aplicación
RUN mvn clean package -DskipTests

# Etapa 2: Imagen final para ejecución
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el jar generado desde la etapa de construcción
COPY --from=builder /app/target/api-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto de la aplicación
EXPOSE 8080

# Comando de inicio
ENTRYPOINT ["java", "-jar", "app.jar"]
