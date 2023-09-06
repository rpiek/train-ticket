FROM openjdk:8

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

ADD ./target/ts-wait-order-service-1.0.jar /app/
CMD ["java", "-XX:MaxRAMPercentage=75", "-XX:MinHeapFreeRatio=10", "-XX:MaxHeapFreeRatio=20",  "-jar", "/app/ts-wait-order-service-1.0.jar"]

EXPOSE 15678