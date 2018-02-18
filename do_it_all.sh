#!/bin/bash

docker ps -q | xargs -I 'id' docker stop 'id'
docker ps -a -q | xargs -I 'id' docker rm 'id'

docker build  -t compile code_compile/
docker build  -t exe code_exec/
docker build  -t stat code_stat/

docker run -d -v `pwd`/../:/srv/tp --name tp ubuntu:14.04 /bin/true
docker run -d --name compile --volumes-from tp compile
docker run -d --name exe --volumes-from tp exe
docker run -d --name gitstat --volumes-from tp -p 80 stat

sleep 1
docker ps -a --filter "name=gitstat" -q |xargs -I 'id' docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 'id'| xargs -I 'ip' firefox 'ip'

