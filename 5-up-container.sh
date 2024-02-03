docker network create gate-system
docker volume create gate-system-logs
docker volume create gate-system-mysql
docker volume create gate-system-images

cd ..
cd gate-system-mysql-server
docker compose up -d
sleep 60
docker compose -f seeder.yml up -d

cd ..
cd gate-system-event-handler
docker compose up -d

cd ..
cd gate-system-display
docker compose up -d

cd ..
cd wiegan-reciever
docker compose up -d

cd ..
cd wiegan-sender
docker compose up -d

cd ..
cd sync-bis-data
docker compose up -d

cd ..
cd gate-system-start-up-browser
chmod +x set-crontab.sh
./set-crontab.sh
