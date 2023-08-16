FROM openjdk:8

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
RUN mkdir -p /test

ADD ./target/ts-food-service-1.0.jar /app/
CMD ["java", "-Xmx200m", "-XX:+PrintGCDetails", "-Xjit:verbose", "-XX:+PrintGCDateStamps", "-Xloggc:/test/gc.log", "-XX:+PrintCompilation",  "-jar", "/app/ts-food-service-1.0.jar"]

EXPOSE 18856