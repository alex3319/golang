include .env.local

dev-start:
	docker-compose --file=./docker-compose-dev.yml --env-file=./.env.local up -d --remove-orphan --build

dev-cli:
	docker exec -it ${APP_NAME}-cli /bin/bash

dev-down:
	docker-compose --file=./docker-compose-dev.yml --env-file=./.env.local down --remove-orphans

dev-stop:
	docker-compose --file=./docker-compose-dev.yml --env-file=./.env.local stop

dev-ps:
	docker-compose --file=./docker-compose-dev.yml --env-file=./.env.local ps

dev-restart:
	make dev-down
	make dev-start




