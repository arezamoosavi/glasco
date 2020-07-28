user-create-superset:
	docker-compose exec superset superset-init

create-wikipedia-topic:
	docker-compose exec kafka kafka-topics --create \
	--topic wikipedia --if-not-exists \
	kafka:9092 --replication-factor 1 --partitions 1 \
	--zookeeper zookeeper:2181 sleep infinity
