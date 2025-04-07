# Spring Boot API Docker Minikube

Prueba API con Spring Boot, Docker y Minikube.

## Tecnologías Utilizadas
- Java 17+
- Spring Boot

## Construir y ejecutar
```sh
mvn clean install
mvn spring-boot:run
```

## Generar el archivo JAR
Para generar el archivo JAR de tu proyecto, ejecuta el siguiente comando:

```sh
mvn clean package
```

## Iniciar Minikube
```sh
minikube start
```

## Aplicar Manifiestos
```sh
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

## Verificar el estado de los pods y servicios
```sh
kubectl get pods
kubectl get services
```

## Acceder a la App
```sh
minikube service api-service
```