FROM adoptopenjdk/openjdk11 as builder

WORKDIR /kafka
EXPOSE 9092 2181

RUN curl -SL "https://mirror-hk.koddos.net/apache/kafka/2.7.0/kafka_2.13-2.7.0.tgz" | tar xzv