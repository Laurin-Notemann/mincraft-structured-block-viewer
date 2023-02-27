DELAY=2

docker-compose --file docker-compose.yml down

docker-compose --file docker-compose.yml up -d --build

echo "****** Waiting for ${DELAY} seconds for containers to go up ******"
sleep $DELAY

docker exec mcmongo1 sh /scripts/rs-init.sh

GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}app live with hot reload enabled on http://localhost:5173${NC}"