起動
docker compose up -d

停止
docker compose stop

停止(コンテナ&ボリューム削除)
docker compose down

再起動
docker compose restart

コンテナ内部に入る
docker exec -i -t app bash


コンテナの確認
docker ps [-a]

???
docker-compose up -d --build
docker compose build --no-cache