#!/bin/bash

# Pararse en ../labrem/fisica

# sudo chmod 777 teleco/scripts/create-db.sh
# ./scripts/create-db.sh

# Para entrar al container de la db
# docker exec -ti teleco-db bash

# Para entrar a mysql desde el container
# mysql -u root -p

FILE_CREATION=db-fisica
FILE_INSERTS=db-fisica-inserts
FILE_SP=db-fisica-sp

CONTAINER_NAME=fisica-db

DB_USER=root
DB_PASSWORD=123456
DB_NAME=LabRem_Fisica




# -----------
cat $(pwd)/database/$FILE_CREATION.sql | docker exec -i $CONTAINER_NAME mysql -u $DB_USER --password=$DB_PASSWORD $DB_NAME
cat $(pwd)/database/$FILE_INSERTS.sql | docker exec -i $CONTAINER_NAME mysql -u $DB_USER --password=$DB_PASSWORD $DB_NAME
# cat $(pwd)/database/$FILE_SP.sql | docker exec -i $CONTAINER_NAME mysql -u $DB_USER --password=$DB_PASSWORD $DB_NAME
