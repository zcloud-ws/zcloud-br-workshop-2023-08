FROM eclipse-temurin:19

WORKDIR /workspace

RUN apt update

RUN apt install -y git

RUN git clone https://github.com/zcloud-ws/zcloud-samples-multi-project.git

WORKDIR /workspace/zcloud-samples-multi-project/java-springboot

RUN ./mvnw clean package

CMD ["java", "-jar", "target/java-springboot-0.0.1-SNAPSHOT.jar"]
