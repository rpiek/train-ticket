FROM openjdk:8

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

ADD ./target/ts-basic-service-1.0.jar /app/
CMD ["java", "-Xms2G", "-Xmx2G", "-jar", "/app/ts-basic-service-1.0.jar"]

EXPOSE 15680