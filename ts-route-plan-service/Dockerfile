FROM openjdk:8

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

ADD ./target/ts-route-plan-service-1.0.jar /app/
CMD ["java","-Xms2G",  "-Xmx2G", "-jar", "/app/ts-route-plan-service-1.0.jar"]

EXPOSE 14578