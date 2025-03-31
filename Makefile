up:
	docker compose up -d

down:
	docker compose down

logs:
	docker compose logs -f

ps:
	docker compose ps

python:
	docker compose exec python bash

julia:
	docker compose exec julia bash

racket:
	docker compose exec racket bash

node:
	docker compose exec node bash

php:
	docker compose exec php bash