# devops-springboot-java11
This repository has the project files for a tutorial series on Spring Boot available from by website at [Spring Framework Guru](https://springframework.guru)

## Checkout the full tutorial here!
[Spring Boot - making Spring Fun again!](https://springframework.guru/spring-boot-web-application-part-1-spring-initializr/)


# Multi-stage build

```
git clone https://github.com/roccqqck/devops-springboot-java11.git
cd devops-springboot-java11
```

Build: ```docker image build -f Dockerfile -t roccqqck:springboot .```

Run: ```docker container run -it -p 8080:8080 -e JAVA_OPTS=Xmx512m -e ARGS=--server.port=8081  roccqqck:springboot```



# How to start the app
You should be able to start the example application by executing com.myapp.MyappServer, which starts a webserver on port 8080 (http://localhost:8080) and serves SwaggerUI where can inspect and try existing endpoints.