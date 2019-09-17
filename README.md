# Flowable Extend Base

## How to use

```shell
docker pull oursky/flowable-extend-base:v1.0.2
docker run --rm -it oursky/flowable-extend-base:v1.0.2 sh
```

## Dockerfile for create flowable-extend app

```dockerfile
FROM oursky/flowable-extend-base:v1.0.2

WORKDIR /app

COPY ./src ./src

RUN ./mvnw package -Dmaven.test.skip=true

CMD ["java", "-jar",  "target/flowable-extend-0.0.1-SNAPSHOT.jar"]
```
