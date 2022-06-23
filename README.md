## Intro

Wappsto connector is a service which provides connectivity with Wappsto IoT platform and Kafka streaming platform.

Wappsto connector can be running outside Wappsto platform. For this reason Wappsto account credentials should be provided
in configuration file: `wappsto-kafka-connector.toml` Connector will create websocket and forward all Wappsto events to
Kafka broker.


### Wappsto connector

For testing purpose Wappsto connector (producer) can be start start in a docker container together with  Kafka cluster:

```
docker-compose up
```

For streaming data visualization

[Redpanda Console](https://github.com/redpanda-data/console) for helping manage and debug Kafka workloads effortlessly.

Run as separate docker:
```
docker run --network=host -p 8080:8080 -e KAFKA_BROKERS=localhost:29092 docker.redpanda.com/vectorized/console:master-0a8fce8
```

### TODO

This project is just example in golang programming language how to connect to Wappsto platform and collect incoming IoT data. Use this
project as a template, so a lot more features can be added and implemented.
