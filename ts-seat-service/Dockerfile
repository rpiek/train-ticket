FROM openjdk:8

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

ADD ./target/ts-seat-service-1.0.jar /app/
CMD ["java", "-Xms2.667G",  "-Xmx2.667G",   "-jar", "/app/ts-seat-service-1.0.jar"]

EXPOSE 18898