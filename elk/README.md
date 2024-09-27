## ELK Stack Setup Guide

This guide outlines how to set up the ELK (Elasticsearch, Logstash, Kibana) stack using Docker Compose, install the `nori` plugin, and test the configuration.

### Table of Contents
- [Prerequisites](#prerequisites)
- [Docker Compose Setup](#docker-compose-setup)
- [ELK Stack Setup](#elk-stack-setup)
  - [Start ELK](#start-elk)
  - [Test Elasticsearch](#test-elasticsearch)
- [Nori Plugin Installation](#nori-plugin-installation)
- [Kibana Access](#kibana-access)

---

### Prerequisites

Make sure the following requirements are met before proceeding:
- Docker and Docker Compose installed on your system.
- Sufficient system resources to run the ELK stack (Elasticsearch, Logstash, Kibana).

To install Docker and Docker Compose, follow the official [Docker installation guide](https://docs.docker.com/get-docker/) and [Docker Compose installation](https://docs.docker.com/compose/install/).

---

### Docker Compose Setup

Your `docker-compose.yml` file may be located in: **/home/user/path/elk**
If it's not already there, create the directory and place your `docker-compose-elk.yml` file inside this folder.

---

### ELK Stack Setup

#### Start ELK

To start the ELK stack using Docker Compose, navigate to the folder where your `docker-compose-elk.yml` file is located and run the following command:

```bash
cd /home/user/path/elk
docker compose -f ./docker-compose-elk.yml up -d
```
This will start all services defined in the docker-compose-elk.yml file in detached mode (-d).

#### Test Elasticsearch
After starting the ELK stack, you can test the Elasticsearch service by copying the certificate from the elk-es01-1 container and performing a health check on the cluster.

##### 1. Copy the CA certificate:

```bash
docker cp elk-es01-1:/usr/share/elasticsearch/config/certs/ca/ca.crt .
```

##### 2. Test the Elasticsearch cluster health:

```bash
curl --cacert ./ca.crt -u elastic:changeme https://localhost:9200/_cluster/health?pretty
```

If everything is working correctly, you should receive a JSON response indicating the cluster's health status.

### Nori Plugin Installation
To install the nori plugin (a popular plugin for handling Korean text in Elasticsearch), follow the steps below:

#### 1. Enter the Elasticsearch container:
```bash
docker exec -it elk-es01-1 bash
```

#### 2. Install the Nori plugin:
```bash
bin/elasticsearch-plugin install analysis-nori
```

#### 3. Restart the Elasticsearch container to apply the plugin:
```bash
docker restart elk-es01-1
```

The nori plugin should now be installed and ready for use.

### Kibana Access
You can access Kibana via the following URL:
- Kibana URL: http://localhost:5601
Use this link to access the Kibana web interface and visualize the data in your ELK stack.
