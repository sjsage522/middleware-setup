docker compose -f ./mysql/docker-compose-mysql.yml up -d
docker compose -f ./redis/docker-compose-redis.yml up -d
docker compose -f ./kafka/docker-compose-kafka.yml up -d
docker compose -f ./elk/docker-compose-elk.yml up -d
