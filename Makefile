user-create-superset:
	docker-compose exec superset superset-init

test-topic:
	docker-compose exec kafka kafka-topics --create \
	--topic testing --if-not-exists \
	kafka:9092 --replication-factor 1 --partitions 1 \
	--zookeeper zookeeper:2181 sleep infinity

refresh-datasource:
	curl http://localhost:8088/druid/refresh_datasources/