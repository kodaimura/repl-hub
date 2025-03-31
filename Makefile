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

node:
	docker compose exec node bash

racket:
	docker compose exec racket bash