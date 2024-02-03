docker network create gate-system
docker volume create gate-system-logs
docker volume create gate-system-mysql
docker volume create gate-system-images

cd . ./gate-system-mysql-server
docker compose up -d
docker compose -f seeder.yml up -d

cd . ./gate-system-event-handler
docker compose up -d

cd . ./gate-system-display
docker compose up -d

cd . ./wiegan-reciever
docker compose up -d

cd . ./wiegan-sender
docker compose up -d

cd . ./gate-system-start-up-browser
chmod +x set-crontab.sh
./set-crontab.sh
