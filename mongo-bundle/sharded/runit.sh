docker-compose down -v --remove-orphans
docker-compose up -d --build --force-recreate
sleep 45 | echo sleeping --- Connecting the shards to the mongos router ---------
docker exec -it mongos1 bash -c "cat /home/app/addShards.js  | mongo "
