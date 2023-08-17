FROM openjdk:8

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
RUN mkdir -p /test

ADD ./target/ts-food-service-1.0.jar /app/
CMD ["java", "-Xmx200m", "-verbose:gc", "-XX:+PrintGCDetails", "-XX:+PrintGCTimeStamps", "-XX:+PrintTenuringDistribution", "-XX:+PrintGCCause", "-XX:+PrintHeapAtGC", "-XX:+PrintAdaptiveSizePolicy", "-XX:+UnlockDiagnosticVMOptions", "-XX:+G1SummarizeRSetStats", "-XX:G1SummarizeRSetStatsPeriod=1", "-XX:+PrintGCDetails", "-XX:+PrintGCDateStamps", "-Xloggc:/test/gc.log", "-XX:+PrintCompilation",  "-jar", "/app/ts-food-service-1.0.jar"]

EXPOSE 18856