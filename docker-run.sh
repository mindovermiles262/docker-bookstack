#!/bin/bash

# Assumes you have a mysql db set up
# with db named $DB_DATABASE and that
# user $DB_USERNAME has the correct
# permissions. $DB_PASSWORD is the 
# user's password.

# Change network name and ports
# to your heart's desire

docker run \
  -e DB_HOST=mysqldb:3306 \
  -e DB_DATABASE=docstack_db \
  -e DB_USERNAME=docstack \
  -e DB_PASSWORD=password \
  -e APP_URL='https://your.domain.com' \
  -p 8082:80 \
  --network db-bridge-net \
  --name docstack_web \
  solidnerd/bookstack
