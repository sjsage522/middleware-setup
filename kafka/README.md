## Kafka Cluster Setup Guide

This Guide outlines how to set up the Kafka Cluster using Docker Compose.

### Table of Contents
- [Prerequisites](#prerequisities)
- [Docker Compose Setup](#docker-compose-setup)
- [Kafka Cluster Setup](#kafka-cluster-setup)
  - [Start Kafka Cluster](#start-kafka-cluster)
- [Kafka UI Access](#kafka-ui-access)

--- Prerequisities

Make sure the following requirements are met before proceeding:
- Docker and Docker Compose installed on your system.

To install Docker and Docker Compose, follow the official [Docker installation guide](https://docs.docker.com/get-docker/) and [Docker Compose installation](https://docs.docker.com/compose/install/).

---

### Docker Compose Setup

Your `docker-compose.yml` file may be located in: **/home/user/path/kafka**
If it's not already there, create the directory and place your
`docker-compose-kafka.yml` file inside this folder.

---

### Kafka Cluster Setup

#### Start Kafka Cluster

To start the Kafka Cluster using Docker Compose, navigate to the folder where
your `docker-compose-kafka.yml` file is located and run the following command:

```bash
cd /home/user/path/kafka
docker compose -f ./docker-compose-kafka.yml up -d
```
This will start all services defined in the docker-compose-kafka.yml file in detached mode (-d).

### Kafka UI Access
You can access Kafka UI via the following URL:
- Kafka UI URL: http://localhost:9080

