docker compose -f ./mysql/docker-compose-mysql.yml down &
docker compose -f ./redis/docker-compose-redis.yml down &
docker compose -f ./kafka/docker-compose-kafka.yml down &
docker compose -f ./elk/docker-compose-elk.yml down &
