#!/bin/bash

. $(dirname ${BASH_SOURCE[0]})/script-parameters.sh

echo -e "${LIGHT_GREEN}Copy files.${NC}"
rsync -avz --ignore-existing apache2/error.log.sample apache2/error.log
rsync -avz --ignore-existing www/log.sample www/log
rsync -avz --ignore-existing www/xdebug.log.sample www/xdebug.log
rsync -avz --ignore-existing .env.sample .env
echo -e "${LIGHT_GREEN}Finish.${NC}"


echo -e "${LIGHT_GREEN}Start the docker.${NC}"
docker-compose up -d
echo -e "${LIGHT_GREEN}Finish.${NC}"