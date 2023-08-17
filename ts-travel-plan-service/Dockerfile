FROM openjdk:8

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

ADD ./target/ts-travel-plan-service-1.0.jar /app/
CMD ["java", "-verbose:gc",  "-XX:+UseConcMarkSweepGC", "-jar", "/app/ts-travel-plan-service-1.0.jar"]

EXPOSE 14322