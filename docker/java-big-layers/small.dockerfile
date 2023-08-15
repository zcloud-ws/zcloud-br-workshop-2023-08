FROM eclipse-temurin:19

WORKDIR /workspace

RUN apt update && \
    apt install -y git && \
    git clone https://github.com/zcloud-ws/zcloud-samples-multi-project.git && \
    cd zcloud-samples-multi-project/java-springboot && \
    ./mvnw clean package &&\
    mv target/java-springboot-0.0.1-SNAPSHOT.jar /workspace/java-springboot.jar && \
    cd /workspace && \
    apt purge -y git && \
    rm -rf zcloud-samples-multi-project && \
    rm -rf /root/.m2 && \
    rm -rf /var/lib/apt/lists/*

CMD ["java", "-jar", "java-springboot.jar"]
