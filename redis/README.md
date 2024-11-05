## Redis Setup Guide

This Guide outlines how to set up the Redis using Docker Compose.

### Table of Contents
- [Prerequisites](#prerequisities)
- [Docker Compose Setup](#docker-compose-setup)
- [Redis Cluster Setup](#redis-setup)
  - [Start Redis Cluster](#start-redis)

--- 

### Prerequisities

Make sure the following requirements are met before proceeding:
- Docker and Docker Compose installed on your system.

To install Docker and Docker Compose, follow the official [Docker installation guide](https://docs.docker.com/get-docker/) and [Docker Compose installation](https://docs.docker.com/compose/install/).

---

### Docker Compose Setup

Your `docker-compose.yml` file may be located in: **/home/user/path/redis**
If it's not already there, create the directory and place your
`docker-compose-redis.yml` file inside this folder.

---

### Redis Setup

#### Start Redis

To start the Redis using Docker Compose, navigate to the folder where
your `docker-compose-redis.yml` file is located and run the following command:

```bash
cd /home/user/path/redis
docker compose -f ./docker-compose-redis.yml up -d
```
This will start all services defined in the docker-compose-redis.yml file in detached mode (-d).

