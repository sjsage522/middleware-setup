## Mysql Setup Guide

This Guide outlines how to set up the Mysql using Docker Compose.

### Table of Contents
- [Prerequisites](#prerequisities)
- [Docker Compose Setup](#docker-compose-setup)
- [Kafka Cluster Setup](#mysql-setup)
  - [Start Kafka Cluster](#start-mysql)

--- 

### Prerequisities

Make sure the following requirements are met before proceeding:
- Docker and Docker Compose installed on your system.

To install Docker and Docker Compose, follow the official [Docker installation guide](https://docs.docker.com/get-docker/) and [Docker Compose installation](https://docs.docker.com/compose/install/).

---

### Docker Compose Setup

Your `docker-compose.yml` file may be located in: **/home/user/path/mysql**
If it's not already there, create the directory and place your
`docker-compose-mysql.yml` file inside this folder.

---

### Mysql Setup

#### Start Mysql

To start the Mysql using Docker Compose, navigate to the folder where
your `docker-compose-mysql.yml` file is located and run the following command:

```bash
cd /home/user/path/mysql
docker compose -f ./docker-compose-mysql.yml up -d
```
This will start all services defined in the docker-compose-mysql.yml file in detached mode (-d).

