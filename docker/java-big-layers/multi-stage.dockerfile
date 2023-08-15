FROM eclipse-temurin:19 as builder

WORKDIR /workspace

RUN apt update

RUN apt install -y git

RUN git clone https://github.com/zcloud-ws/zcloud-samples-multi-project.git

WORKDIR /workspace/zcloud-samples-multi-project/java-springboot

RUN ./mvnw clean package

FROM eclipse-temurin:19

COPY --from=builder /workspace/zcloud-samples-multi-project/java-springboot/target/java-springboot-*.jar /workspace/java-springboot.jar

WORKDIR /workspace

CMD ["java", "-jar", "java-springboot.jar"]
