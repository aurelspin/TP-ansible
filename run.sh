#!/bin/bash 

docker kill $(docker ps -a -q -f name="tp_ansi")
docker rm $(docker ps -a -q -f name="tp_ansi")
echo "[ALL]" > hosts_list
for i in {1..5}; do docker run -d --name tp_ansi_$i build1
docker inspect --format '{{ .NetworkSettings.IPAddress }}' tp_ansi_$i >> hosts_list
done
