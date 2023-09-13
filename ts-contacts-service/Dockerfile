FROM openjdk:8

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

ADD ./target/ts-contacts-service-1.0.jar /app/
CMD ["java", "-jar", "-Xms2G",  "-Xmx2G", "/app/ts-contacts-service-1.0.jar"]

EXPOSE 12347