DELAY=2

docker build -t minecraftviewerimage .

docker-compose --file docker-compose.yml down

docker-compose --file docker-compose.yml up -d --build

echo "****** Waiting for ${DELAY} seconds for containers to go up ******"
sleep $DELAY

docker exec mcmongo1 sh /scripts/rs-init.sh